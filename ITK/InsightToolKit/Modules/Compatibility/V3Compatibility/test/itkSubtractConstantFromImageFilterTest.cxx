/*=========================================================================
 *
 *  Copyright Insight Software Consortium
 *
 *  Licensed under the Apache License, Version 2.0 (the "License");
 *  you may not use this file except in compliance with the License.
 *  You may obtain a copy of the License at
 *
 *         http://www.apache.org/licenses/LICENSE-2.0.txt
 *
 *  Unless required by applicable law or agreed to in writing, software
 *  distributed under the License is distributed on an "AS IS" BASIS,
 *  WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 *  See the License for the specific language governing permissions and
 *  limitations under the License.
 *
 *=========================================================================*/
#include "itkSubtractConstantFromImageFilter.h"
#include "itkImageRegionIteratorWithIndex.h"
#include "itkMath.h"
#include "itkTestingMacros.h"

int itkSubtractConstantFromImageFilterTest( int, char* [] )
{

  // Define the dimension of the images
  const unsigned int ImageDimension = 3;

  // Declare the types of the images
  typedef float                                   PixelType;
  typedef itk::Image< PixelType, ImageDimension > InputImageType;
  typedef itk::Image< PixelType, ImageDimension > OutputImageType;
  typedef float                                   FactorType;

  // Declare appropriate iterator types
  typedef itk::ImageRegionIteratorWithIndex<
                                  InputImageType >  InputIteratorType;

  typedef itk::ImageRegionIteratorWithIndex<
                                  OutputImageType > OutputIteratorType;


  // Declare the type of the index to access images
  typedef itk::Index< ImageDimension >         IndexType;

  // Declare the type of the size
  typedef itk::Size< ImageDimension >          SizeType;

  // Declare the type of the Region
  typedef itk::ImageRegion< ImageDimension >   RegionType;

  // Create the input image
  InputImageType::Pointer inputImage = InputImageType::New();

  // Define its size, and start index
  SizeType size;
  size[0] = 2;
  size[1] = 2;
  size[2] = 2;

  IndexType start;
  start[0] = 0;
  start[1] = 0;
  start[2] = 0;

  RegionType region;
  region.SetIndex( start );
  region.SetSize( size );

  // Initialize image
  inputImage->SetLargestPossibleRegion( region );
  inputImage->SetBufferedRegion( region );
  inputImage->SetRequestedRegion( region );
  inputImage->Allocate();

  // Initialize the content of the input image
  const double value = itk::Math::pi / 6.0;
  inputImage->FillBuffer( value );


  // Declare the type for the SubtractConstantFromImageFilter filter
  typedef itk::SubtractConstantFromImageFilter<
    InputImageType, FactorType, OutputImageType > FilterType;


  // Create the filter
  FilterType::Pointer filter = FilterType::New();

  EXERCISE_BASIC_OBJECT_METHODS( filter, SubtractConstantFromImageFilter,
    SubtractImageFilter );

  // Set the input image
  filter->SetInput( inputImage );

  // Get the filter output
  OutputImageType::Pointer outputImage = filter->GetOutput();

  const FactorType factor = 17.0;
  filter->SetConstant( factor );
  TEST_SET_GET_VALUE( factor, filter->GetConstant() );


  // Execute the filter
  TRY_EXPECT_NO_EXCEPTION( filter->Update() );


  // Create iterators for going through the images
  InputIteratorType it( inputImage, inputImage->GetBufferedRegion() );
  OutputIteratorType ot( outputImage, outputImage->GetRequestedRegion() );

  // Check the content of the result image
  ot.GoToBegin();
  it.GoToBegin();
  while( !ot.IsAtEnd() )
    {
    const InputImageType::PixelType  input  = it.Get();
    const OutputImageType::PixelType output = ot.Get();
    const float expectedValue = input - factor;
    if( !itk::Math::ExactlyEquals( expectedValue, output ) )
      {
      std::cerr << "Test failed!" << std::endl;
      std::cerr << "Error in pixel value at index [" << ot.GetIndex() << "]" << std::endl;
      std::cerr << "Expected: " << expectedValue
        << ", but got " << output << std::endl;
      return EXIT_FAILURE;
      }
    ++ot;
    ++it;
    }

  FilterType::Pointer filter2 = FilterType::New();
  filter2 = filter;
  if( filter2 != filter )
    {
    std::cout << "Test failed!" << std::endl;
    std::cout << "Error: operator = failed." << std::endl;
    return EXIT_FAILURE;
    }


  std::cout << "Test finished." << std::endl;
  return EXIT_SUCCESS;
}
