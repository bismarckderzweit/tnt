A=[ 179	264;
    175	260;
    170	256;
    165	252;
    162	249;
    159	247;
    154	244;
    150	241;
    147	239;
    142	236;
    138	234;
    133	232;
    129	231;
    125	229;
    120	227;
    114	225;
    108	224;
    104	223;
    101	223;
    97	222;
    92	223;
    86	223;
    82	222;
    76	221;
    70	222;
    66	223;
    61	224;
    57	225;
    52	224;
    48	225;
    42	227;
    37	228;
    32	230;
    28	233;
    24	234;
    20	237;
    17	240;
    14	243;
    12	249;
    12	253;
    13	258;
    14	263;
    15	268;
    17	273;
    20	278;
    23	282;
    27	285;
    31	288;
    35	291;
    39	292;
    43	293;
    48	296;
    52	295;
    57	295;
    60	294;
    62	292;
    65	290;
    67	288;
    71	285;
    73	283;
    75	280;
    78	278;
    80	275;
    82	272;
    83	269;
    83	266;
    81	263;
    79	260;
    77	258;
    74	256;
    73	253;
    70	251;
    66	249;
    62	249;
    58	248];
 plot(A(:,1),A(:,2),'.');

P(1,:)={0,A(1,:)};
P(2,:)={0,A(1,:)};
P(3,:)={0,A(1,:)};


for i = 1:length(A)-1
% for i = 1:length(A)
    k =1;
    for n =1:3
        
        for j = i+1:length(A)
            a=5*(rand-0.5);
            b=5*(rand-0.5);
            K(1,1) = A(j,1)+a;
            K(1,2) = A(j,2)+b;
            D(k,:)=[P(n,:),K];
            
            D(k,1)={P{n,1}+len(P(n,end),K)};
            k=k+1;
        end
    end
    
    D = sortrows(D,1);
    P={};
    P(1,:)= D(1,:);
    P(2,:)= D(2,:);
    P(3,:)= D(3,:);
    D = {};
end

X = P(1,2:end);
for m=1:75
figure(1); 
plot(X{m}(1),X{m}(2),'.');
hold on;
end

Y = P(1,2:end);
for m=1:75
figure(2); 
plot(Y{m}(1),Y{m}(2),'.');
hold on;
end

Z = P(1,2:end);
for m=1:75
figure(3); 
plot(Z{m}(1),Z{m}(2),'.');
hold on;
end

function a = cost(b1,b2,c)

a1 = c(1,1)-b2{1,1}(1,1);
a2 = c(1,2)-b2{1,1}(1,2);
a=[a1 a2];

b1 = b2{1,1}(1,1)-b1{1,1}(1,1);
b2 = b2{1,1}(1,2)-b1{1,1}(1,2);
b=[b1 b2];

rad = acos(dot(a,b)/(norm(a)*norm(a)));
cos1 = cos(rad);
Dst1 = len(P(n,end),K)-di;
if cos1<0.5
    cos2 = cos1;
else
    cos2 = 1;
end

if Dst1<0 
    Dst=-5.2*Dst1;
else
    Dst=2*Dst;
end

Cs = 1-cos2+Dst;
if i > 14
    Ci = (Imax - I)/2000*0.1;
else
    Ci = (Imax - I)/2000;
end

a = Cs + Ci;
    








end
function a = len(b,c)
      a = sqrt((b{1,1}(1,1)-c(1,1))^2+(b{1,1}(1,2)-c(1,2))^2);

        
  
% for i=1:length(A)
%     for j = i+1:length(A)
%         cost(i,j) = sqrt((A(i,1)-A(j,1))^2+(A(i,2)-A(j,2))^2);
%     end
% end
          
        
end