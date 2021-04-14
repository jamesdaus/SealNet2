# SealNet Seal Chipping

####Usage:

"python sealFace.py /FOLDER_OF_PHOTOS"

Output will be written into folder /FOLDER_OF_PHOTOSChips


####Compiling changes:
 
mkdir build

cd build

cmake ..

cmake --build . --config Release

This will create an updated chipping executable, which should be renamed seal.exe and placed into the parent folder with sealFace.py


####Important files:

sealFace.py - Python code which takes input folder and calls chipping executable on each photo

dnn_mmod_dog_hipsterizer.cpp - Adapted Dlib code for seal face detection and chipping

CMakeLists.txt - File used by CMake to compile above code

seal.exe - Compiled executable called by sealFace

seal.dat - Trained model for face detection used by seal.exe



####Useful resources:

Link to SealNet 1.0:
https://github.com/aylab/SealFaceRecognition

CNNs (Neural network architecture):

Introduction to the concepts: https://towardsdatascience.com/simple-introduction-to-convolutional-neural-networks-cdf8d3077bac

Dlib (Face chipping):

Basis of detection code: https://github.com/davisking/dlib/blob/master/examples/dnn_mmod_dog_hipsterizer.cpp
