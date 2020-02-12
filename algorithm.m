
% Locate the cochlear implant electrode contact positions in the CT image
% 'im_bbox'. This should be a small (e.g. 12x12x12 mm) sub-image of a
% high-resolution CT scan. 'pixel_spacing' is a 3D vector with the pixel
% spacing in mm. 'model' are the positions of the electrode contacts according
% to the specifications (in mm). The most basal contact should have position 0.
% The function returns the estimated contact positions in millimeters.
% 
% If you use this code anywhere we would appreciate if you cite the following
% article:
% E. Bennink, J.P.M. Peters, A.W. Wendrich, E.J. Vonken, G.A. van Zanten, M.A.
% Viergever, Automatic Localization of Cochlear Implant Electrode Contacts in
% CT, Ear and Hearing, 2017, DOI: 10.1097/AUD.0000000000000438
%
% Copyright (c) 2016 Edwin Bennink, University Medical Center Utrecht.
% All rights reserved.
% 
% Redistribution and use in source and binary forms are permitted provided that
% the above copyright notice and this paragraph are duplicated in all such
% forms and that any documentation, advertising materials, and other materials
% related to such distribution and use acknowledge that the software was
% developed by the University Medical Center Utrecht. The name of the
% University Medical Center Utrecht may not be used to endorse or promote
% products derived from this software without specific prior written
% permission.
% THIS SOFTWARE IS PROVIDED 'AS IS' AND WITHOUT ANY EXPRESS OR
% IMPLIED WARRANTIES, INCLUDING, WITHOUT LIMITATION, THE IMPLIED
% WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE.
%
function pos_mm = locate_contacts(im_bbox, pixel_spacing, model)
    % Configuration.
    filter_size = 0.8;   % Width of the filter kernels (FWHM in mm).
    threshold   = 3000;  % Threshold for curve tracking (HU).
    sample_dist = 0.1;   % Sample distance on the intensity profiles (mm).
%     pixel_spacing = [0.3,0.3,0.3];
%     A1 = dicomread('1.dcm');
%     A2 = dicomread('2.dcm');
%     A3 = dicomread('3.dcm');
%     A4 = dicomread('4.dcm');
%     A5 = dicomread('5.dcm');
%     A6 = dicomread('6.dcm');
%     A7 = dicomread('7.dcm');
%     A8 = dicomread('8.dcm');
%     A9 = dicomread('9.dcm');
%     A10= dicomread('10.dcm');
%     A11= dicomread('11.dcm');
%     A12= dicomread('12.dcm');
%     im_bbox = cat(3,A1,A2,A3,A4,A5,A6,A7,A8,A9,A10,A11,A12);
%     model = [ 0 0 0];
%     model(:,:,2)=[1 1 1];
    % Resample im_bbox to isotropic voxels (cubic interpolation). Note that
    % in MATLAB the order of the indices is (y,x,z) rather than (x,y,z).
    spacing = pixel_spacing(1);
    grid_spacing = spacing ./ pixel_spacing;
    x_grid = 1:grid_spacing(1):size(im_bbox, 2);
    y_grid = 1:grid_spacing(2):size(im_bbox, 1);
    z_grid = 1:grid_spacing(3):size(im_bbox, 3);
    [yi, xi, zi] = meshgrid(y_grid, x_grid, z_grid);
   
    im_res = interp3(single(im_bbox), yi, xi, zi, 'cubic');
    
    % Apply a 3D Laplacian filter.
    im_enh = laplace_filter_3d(im_res, filter_size / spacing);
    
    % Find brightest point on the most left and right image slice; this is
    % where the electrode array enters the volume.
    right_slice = im_enh(:,1,:);
    left_slice  = im_enh(:,end,:);
    [right_intensity, right_pos] = max(right_slice(:));
    [left_intensity, left_pos]   = max(left_slice(:));
    
    % If the intensity of the brightest pixel on the right is the highest,
    % then start tracking on the right. (px, py, pz) is the initial position.
    if right_intensity > left_intensity
        px = 1;
        [py, pz] = ind2sub(size(right_slice), right_pos);
    else
        px = size(im_enh, 2);
        [py, pz] = ind2sub(size(left_slice), left_pos);
    end
 
    % Track the electrode array, starting from (px, py, pz).
    pos = track(im_res, im_enh, spacing, [px py pz]);
    
    % Generate a smooting cubic spline. smooting_spline is a 3D parametric
    % function that can be evaluated by calling fnval(smoothing_spline, t).
    smoothing_spline = csaps(1:length(pos), pos', 0.9);
    
    % Accurately calculate the distance from the starting point of the smooth
    % spline.
    t  = 1:0.01:length(pos);          % Parameter values.
    x  = fnval(smoothing_spline, t);  % Evaluate the smoothing_spline at t.
    dx = diff(x');                    % Differences between subsequent t's.
    cx = zeros(1, length(t));         % Distance (in mm) over curve, at t.
    for i = 2:length(t)
        cx(i) = cx(i-1) + norm(dx(i-1,:)) * spacing;
    end
 
    % Calculate values for t such that the distance between the samples is
    % equal to sample_dist.
    n = floor(cx(end) / sample_dist) + 1;  % Number of values required.
    dist = (0:n-1) * sample_dist;          % Distance (mm) between samples.
    t = interp1(cx, t, dist);              % Interpolate the values for t.
    pos = fnval(smoothing_spline, t)';     % Evaluate the spline at t to get
                                           %   the new sample positions.
 
    % Interpolate the intensity profile at the new sample pos in the 
    % enhanced and resampled images.
    prof_enh = zeros(1, n);
    prof_res = zeros(1, n);
    for i = 1:n
        p = pos(i,:);
        prof_enh(i) = interp3(im_enh, p(1), p(2), p(3), 'cubic', 0);
        prof_res(i) = interp3(im_res, p(1), p(2), p(3), 'cubic', 0);
    end
 
    % Remove low frequency components from profile_enh. This standard deviation
    % results in a kernel with a FWHM equal to filter_size.
    sd = filter_size / sample_dist / 2.3548;
    prof_enh = prof_enh - gauss_filter_3d(prof_enh, sd);
 
    % Find the last peak in the intensity profile of the enhanced image, with
    % an original CT value > stop_value.
    found_low = false; % Did we find an intensity below the threshold?
    apical_cont = 0;   % Position of the peak, i.e. the most apical contact.
    for i = n-1:-1:2   % Iterate over profile in reverse order.
        if prof_res(i) < threshold
            found_low = true;
        elseif found_low && all(prof_enh(i) > prof_enh([i-1 i+1]))
            apical_cont = i;
            break;
        end
    end
    
    % Find the most optimal shift (dx) and compression (c) with respect to the
    % initial position of the most apical contact.
    [dx, c] = correlate(prof_enh, dist, apical_cont, model);
    
    % Calculate the distance to the most basal contact.
    dist_basal = dist(apical_cont) + dx - (1-c) * model(end);
    
    % Calculate the final contact positions in mm. 
    pos_px = interp1(dist - dist_basal, pos, (1-c) * model);
    pos_mm = (pos_px - 1) * spacing;
end
 
 
 
% Approximate Laplace filter using difference of Gaussians (DoG).
function image_out = laplace_filter_3d(image_in, filter_size)
    % Calculate Gaussian filter standard deviations. The small-to-large factor
    % should be about 1.6 for a Laplacian-approximating DoG filter. These
    % standard deviations will result in a DoG kernel with a FWHM equal to
    % filter_size.
    sd_small = filter_size / 3.513;
    sd_large = 1.6 * sd_small;
    
    % Apply coarse and fine Gaussian filters.
    image_small = gauss_filter_3d(image_in, sd_small * [1 1 1]);
    image_large = gauss_filter_3d(image_in, sd_large * [1 1 1]);
    
    % Calculate the difference between the output of the Gaussian filters.
    image_out = image_small - image_large;
end
 
 
 
% Generic 3D Gaussian filter. Note that in MATLAB the order of the indices is
% (y,x,z) rather than (x,y,z). The functions 'fspecial' and 'imfilter' require
% the Image Processing Toolbox.
function image_out = gauss_filter_3d(image_in, sd)
    n = 2 * ceil(3 * sd) + 1;      % Gaussian kernel size.
    m = size(image_in);            % Image size
    image_out = single(image_in);  % Convert to single precision.
    
    % Pad to length 3.
    n(end+1:3) = 1;
    m(end+1:3) = 1;
    
    % Filter the x dimension.
    if n(1) > 1 && m(2) > 1
        psf = fspecial('gaussian', [1 n(1)], sd(1));
        image_out = imfilter(image_out, psf, 'replicate');
    end
    
    % Filter the y dimension.
    if n(2) > 1 && m(1) > 1
        psf = fspecial('gaussian', [n(2) 1], sd(2));
        image_out = imfilter(image_out, psf, 'replicate');
    end
    
    % Filter the z dimension. It is usually faster to permute the data and
    % filter over the y dimension than to filter over the z dimension.
    if n(3) > 1 && m(3) > 1
        psf = fspecial('gaussian', [n(3) 1], sd(3));
        image_out = permute(image_out, [3 1 2]);
        image_out = imfilter(image_out, psf, 'replicate');
        image_out = permute(image_out, [2 3 1]);
    end
end
 
 
 
% Curve tracking algorithm. 
function pos = track(im_res, im_enh, spacing, pos_init)
    threshold = 3000;           % Threshold (HU).
    min_dist = 2.3 / spacing;   % Min step size (converted from mm to pixels).
    max_dist  = 3.55 / spacing;  % Max step size (converted from mm to pixels).
%     min_dist = 0.5 / spacing;   % Min step size (converted from mm to pixels).
%     max_dist  = 1.0 / spacing;  % Max step size (converted from mm to pixels).
    max_angle = 45;             % Maximum angle (in degrees).
    
    stop_length_max = 100;  % Maximum total track length.
    stop_count_max  = 15;    % Maximum number of subsequent points with an 
                            %  intensity below the threshold.
    
    % Calculate the cosine of the maximum angle.
    min_dot_prod = cos(pi * max_angle/180);
    
    % v is the vector pointing into the direction of the track. The initial
    % direction vector points from the initial position towards the
    % center of the volume.
    v = size(im_res) / 2;
    v = v([2 1 3]) / 2 - pos_init;
    v = v ./ norm(v);
    
    stop_count = 0;
    p = pos_init;
    pos = [p];
    while stop_count < stop_count_max && length(pos) < stop_length_max
        % Search for a new point on the electrode.
        max_value = 0;
        max_p     = p;
        for z = -floor(max_dist):floor(max_dist)
            for y = -floor(max_dist):floor(max_dist)
                for x = -floor(max_dist):floor(max_dist)
                    % Check if (x,y,z) is between min_dist and max_dist from
                    % the origin.
                    dist = norm([x y z]);
                    if dist < min_dist || dist > max_dist
                        continue
                    end
                    
                    % Check if the angle between (x,y,z) and v is less than
                    % max_angle degrees.
                    w = [x y z] ./ dist;
                    dot_prod = w*v';
                    if dot_prod < min_dot_prod
                        continue
                    end
                    
                    % Check if pixel position q = p + (x,y,z) lies within the
                    % volume.
                    q = p + [x y z];
                    if any(q < 1) || any(q([2 1 3]) > size(im_enh))
                        continue
                    end
                    
                    % Check if the pixel at q is the brightest.
                    value = im_enh(q(2), q(1), q(3));
                    if value > max_value
                        max_value = value;
                        max_p = q;
                    end
                end
            end
        end
        
        % Calculate the new direction vector, pointing from the previous to the
        % new position.
        v = max_p - p;
        v = v ./ norm(v);
        
        % Add the new position to the list of positions.
        p = max_p;
        pos = [pos; p];
        
        % Stop if stop_count_max points subsequent were found that had a CT 
        % value below the threshold.
        if im_res(p(2), p(1), p(3)) < threshold
            stop_count = stop_count + 1;
        else
            stop_count = 0;
        end
    end
end
 
 
 
% Correlate the intensity profile (prof) with the model (x).
function [max_dx, max_c] = correlate(prof, dist, apical_cont, x)
    % Calculate the initial distance to the most basal contact.
    dist_basal = dist(apical_cont) - x(end);
    
    % Align the contact points on the electrode with the peaks in the intensity
    % profile. Allow -0.5 to 0.5 mm shift (dx) and 0 to 10% compression (c).
    max_f = 0;
    max_dx = 0;
    max_c = 0;
    n = length(x);
    for dx = -0.5:0.05:0.5
        for c = 0.0:0.005:0.1
            
            % Add the sum of intensities on all n contact positions.
            f = 0;
            for i = 1:n
                val = interp1(dist - dist_basal, prof, ...
                    (1-c) * x(i) + c * x(end) + dx);
                f = f + val;
            end
            
            % Subtract the sum of intensities between n-1 contact positions.
            for i = 1:n-1
                val = interp1(dist - dist_basal, prof, ...
                    (1-c) * 0.5 * (x(i) + x(i+1)) + c * x(end) + dx);
                f = f - val;
            end
            
            if f > max_f  
                % A higher value for f was found. Store these values for dx and
                % c.
                max_f = f;
                max_dx = dx;
                max_c = c;
            end
        end
    end
end
