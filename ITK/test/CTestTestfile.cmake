# CMake generated Testfile for 
# Source directory: /Users/kit/Documents/ITK/MedialCurve-IJCv21
# Build directory: /Users/kit/Documents/ITK/test
# 
# This file includes the relevant testing commands required for 
# testing this directory and lists subdirectories to be tested as well.
add_test(ComputeCylinderMedialCurve "itkMedialCurveTest" "/Users/kit/Documents/ITK/MedialCurve-IJCv21/data/cylinder.vtk" "/Users/kit/Documents/ITK/MedialCurve-IJCv21/data/output/cylinder_output.vtk")
add_test(TestingCylinderMedialCurve "ImageCompare" "/Users/kit/Documents/ITK/MedialCurve-IJCv21/data/output/cylinder_output.vtk" "/Users/kit/Documents/ITK/MedialCurve-IJCv21/data/medialcurves/cylinder_medialcurve.vtk")
add_test(ComputeTorusMedialCurve "itkMedialCurveTest" "/Users/kit/Documents/ITK/MedialCurve-IJCv21/data/torus.vtk" "/Users/kit/Documents/ITK/MedialCurve-IJCv21/data/output/torus_output.vtk")
add_test(TestingTorusMedialCurve "ImageCompare" "/Users/kit/Documents/ITK/MedialCurve-IJCv21/data/output/torus_output.vtk" "/Users/kit/Documents/ITK/MedialCurve-IJCv21/data/medialcurves/torus_medialcurve.vtk")
add_test(ComputeAneurysm1MedialCurve "itkMedialCurveTest" "/Users/kit/Documents/ITK/MedialCurve-IJCv21/data/aneu_1.vtk" "/Users/kit/Documents/ITK/MedialCurve-IJCv21/data/output/aneu_1_output.vtk")
add_test(TestingAneurysm1MedialCurve "ImageCompare" "/Users/kit/Documents/ITK/MedialCurve-IJCv21/data/output/aneu_1_output.vtk" "/Users/kit/Documents/ITK/MedialCurve-IJCv21/data/medialcurves/aneu_1_medialcurve.vtk")
add_test(ComputeAneurysm2MedialCurve "itkMedialCurveTest" "/Users/kit/Documents/ITK/MedialCurve-IJCv21/data/aneu_2.vtk" "/Users/kit/Documents/ITK/MedialCurve-IJCv21/data/output/aneu_2_output.vtk")
add_test(TestingAneurysm2MedialCurve "ImageCompare" "/Users/kit/Documents/ITK/MedialCurve-IJCv21/data/output/aneu_2_output.vtk" "/Users/kit/Documents/ITK/MedialCurve-IJCv21/data/medialcurves/aneu_2_medialcurve.vtk")
add_test(ComputeAneurysm3MedialCurve "itkMedialCurveTest" "/Users/kit/Documents/ITK/MedialCurve-IJCv21/data/aneu_3.vtk" "/Users/kit/Documents/ITK/MedialCurve-IJCv21/data/output/aneu_3_output.vtk")
add_test(TestingAneurysm3MedialCurve "ImageCompare" "/Users/kit/Documents/ITK/MedialCurve-IJCv21/data/output/aneu_3_output.vtk" "/Users/kit/Documents/ITK/MedialCurve-IJCv21/data/medialcurves/aneu_3_medialcurve.vtk")
add_test(ComputeAneurysm4MedialCurve "itkMedialCurveTest" "/Users/kit/Documents/ITK/MedialCurve-IJCv21/data/aneu_4.vtk" "/Users/kit/Documents/ITK/MedialCurve-IJCv21/data/output/aneu_4_output.vtk")
add_test(TestingAneurysm4MedialCurve "ImageCompare" "/Users/kit/Documents/ITK/MedialCurve-IJCv21/data/output/aneu_4_output.vtk" "/Users/kit/Documents/ITK/MedialCurve-IJCv21/data/medialcurves/aneu_4_medialcurve.vtk")
