# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.7

# Delete rule output on recipe failure.
.DELETE_ON_ERROR:


#=============================================================================
# Special targets provided by cmake.

# Disable implicit rules so canonical targets will work.
.SUFFIXES:


# Remove some rules from gmake that .SUFFIXES does not remove.
SUFFIXES =

.SUFFIXES: .hpux_make_needs_suffix_list


# Suppress display of executed commands.
$(VERBOSE).SILENT:


# A target that is always out of date.
cmake_force:

.PHONY : cmake_force

#=============================================================================
# Set environment variables for the build.

# The shell in which to execute make rules.
SHELL = /bin/sh

# The CMake executable.
CMAKE_COMMAND = /usr/local/Cellar/cmake/3.7.2/bin/cmake

# The command to remove a file.
RM = /usr/local/Cellar/cmake/3.7.2/bin/cmake -E remove -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /Users/moriissei/Desktop/UCSC/Research/MoonPhotoMosaic

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /Users/moriissei/Desktop/UCSC/Research/MoonPhotoMosaic

# Include any dependencies generated for this target.
include CMakeFiles/MoonPhotoMosaic.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/MoonPhotoMosaic.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/MoonPhotoMosaic.dir/flags.make

CMakeFiles/MoonPhotoMosaic.dir/main.cpp.o: CMakeFiles/MoonPhotoMosaic.dir/flags.make
CMakeFiles/MoonPhotoMosaic.dir/main.cpp.o: main.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/moriissei/Desktop/UCSC/Research/MoonPhotoMosaic/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/MoonPhotoMosaic.dir/main.cpp.o"
	/Applications/XcodeGM.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++   $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/MoonPhotoMosaic.dir/main.cpp.o -c /Users/moriissei/Desktop/UCSC/Research/MoonPhotoMosaic/main.cpp

CMakeFiles/MoonPhotoMosaic.dir/main.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/MoonPhotoMosaic.dir/main.cpp.i"
	/Applications/XcodeGM.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/moriissei/Desktop/UCSC/Research/MoonPhotoMosaic/main.cpp > CMakeFiles/MoonPhotoMosaic.dir/main.cpp.i

CMakeFiles/MoonPhotoMosaic.dir/main.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/MoonPhotoMosaic.dir/main.cpp.s"
	/Applications/XcodeGM.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/moriissei/Desktop/UCSC/Research/MoonPhotoMosaic/main.cpp -o CMakeFiles/MoonPhotoMosaic.dir/main.cpp.s

CMakeFiles/MoonPhotoMosaic.dir/main.cpp.o.requires:

.PHONY : CMakeFiles/MoonPhotoMosaic.dir/main.cpp.o.requires

CMakeFiles/MoonPhotoMosaic.dir/main.cpp.o.provides: CMakeFiles/MoonPhotoMosaic.dir/main.cpp.o.requires
	$(MAKE) -f CMakeFiles/MoonPhotoMosaic.dir/build.make CMakeFiles/MoonPhotoMosaic.dir/main.cpp.o.provides.build
.PHONY : CMakeFiles/MoonPhotoMosaic.dir/main.cpp.o.provides

CMakeFiles/MoonPhotoMosaic.dir/main.cpp.o.provides.build: CMakeFiles/MoonPhotoMosaic.dir/main.cpp.o


# Object files for target MoonPhotoMosaic
MoonPhotoMosaic_OBJECTS = \
"CMakeFiles/MoonPhotoMosaic.dir/main.cpp.o"

# External object files for target MoonPhotoMosaic
MoonPhotoMosaic_EXTERNAL_OBJECTS =

MoonPhotoMosaic: CMakeFiles/MoonPhotoMosaic.dir/main.cpp.o
MoonPhotoMosaic: CMakeFiles/MoonPhotoMosaic.dir/build.make
MoonPhotoMosaic: /usr/local/lib/libopencv_stitching.3.4.1.dylib
MoonPhotoMosaic: /usr/local/lib/libopencv_superres.3.4.1.dylib
MoonPhotoMosaic: /usr/local/lib/libopencv_videostab.3.4.1.dylib
MoonPhotoMosaic: /usr/local/lib/libopencv_aruco.3.4.1.dylib
MoonPhotoMosaic: /usr/local/lib/libopencv_bgsegm.3.4.1.dylib
MoonPhotoMosaic: /usr/local/lib/libopencv_bioinspired.3.4.1.dylib
MoonPhotoMosaic: /usr/local/lib/libopencv_ccalib.3.4.1.dylib
MoonPhotoMosaic: /usr/local/lib/libopencv_dnn_objdetect.3.4.1.dylib
MoonPhotoMosaic: /usr/local/lib/libopencv_dpm.3.4.1.dylib
MoonPhotoMosaic: /usr/local/lib/libopencv_face.3.4.1.dylib
MoonPhotoMosaic: /usr/local/lib/libopencv_fuzzy.3.4.1.dylib
MoonPhotoMosaic: /usr/local/lib/libopencv_hfs.3.4.1.dylib
MoonPhotoMosaic: /usr/local/lib/libopencv_img_hash.3.4.1.dylib
MoonPhotoMosaic: /usr/local/lib/libopencv_line_descriptor.3.4.1.dylib
MoonPhotoMosaic: /usr/local/lib/libopencv_optflow.3.4.1.dylib
MoonPhotoMosaic: /usr/local/lib/libopencv_reg.3.4.1.dylib
MoonPhotoMosaic: /usr/local/lib/libopencv_rgbd.3.4.1.dylib
MoonPhotoMosaic: /usr/local/lib/libopencv_saliency.3.4.1.dylib
MoonPhotoMosaic: /usr/local/lib/libopencv_stereo.3.4.1.dylib
MoonPhotoMosaic: /usr/local/lib/libopencv_structured_light.3.4.1.dylib
MoonPhotoMosaic: /usr/local/lib/libopencv_surface_matching.3.4.1.dylib
MoonPhotoMosaic: /usr/local/lib/libopencv_tracking.3.4.1.dylib
MoonPhotoMosaic: /usr/local/lib/libopencv_xfeatures2d.3.4.1.dylib
MoonPhotoMosaic: /usr/local/lib/libopencv_ximgproc.3.4.1.dylib
MoonPhotoMosaic: /usr/local/lib/libopencv_xobjdetect.3.4.1.dylib
MoonPhotoMosaic: /usr/local/lib/libopencv_xphoto.3.4.1.dylib
MoonPhotoMosaic: /usr/local/lib/libopencv_shape.3.4.1.dylib
MoonPhotoMosaic: /usr/local/lib/libopencv_photo.3.4.1.dylib
MoonPhotoMosaic: /usr/local/lib/libopencv_dnn.3.4.1.dylib
MoonPhotoMosaic: /usr/local/lib/libopencv_datasets.3.4.1.dylib
MoonPhotoMosaic: /usr/local/lib/libopencv_ml.3.4.1.dylib
MoonPhotoMosaic: /usr/local/lib/libopencv_plot.3.4.1.dylib
MoonPhotoMosaic: /usr/local/lib/libopencv_video.3.4.1.dylib
MoonPhotoMosaic: /usr/local/lib/libopencv_calib3d.3.4.1.dylib
MoonPhotoMosaic: /usr/local/lib/libopencv_features2d.3.4.1.dylib
MoonPhotoMosaic: /usr/local/lib/libopencv_highgui.3.4.1.dylib
MoonPhotoMosaic: /usr/local/lib/libopencv_videoio.3.4.1.dylib
MoonPhotoMosaic: /usr/local/lib/libopencv_phase_unwrapping.3.4.1.dylib
MoonPhotoMosaic: /usr/local/lib/libopencv_flann.3.4.1.dylib
MoonPhotoMosaic: /usr/local/lib/libopencv_imgcodecs.3.4.1.dylib
MoonPhotoMosaic: /usr/local/lib/libopencv_objdetect.3.4.1.dylib
MoonPhotoMosaic: /usr/local/lib/libopencv_imgproc.3.4.1.dylib
MoonPhotoMosaic: /usr/local/lib/libopencv_core.3.4.1.dylib
MoonPhotoMosaic: CMakeFiles/MoonPhotoMosaic.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/Users/moriissei/Desktop/UCSC/Research/MoonPhotoMosaic/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable MoonPhotoMosaic"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/MoonPhotoMosaic.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/MoonPhotoMosaic.dir/build: MoonPhotoMosaic

.PHONY : CMakeFiles/MoonPhotoMosaic.dir/build

CMakeFiles/MoonPhotoMosaic.dir/requires: CMakeFiles/MoonPhotoMosaic.dir/main.cpp.o.requires

.PHONY : CMakeFiles/MoonPhotoMosaic.dir/requires

CMakeFiles/MoonPhotoMosaic.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/MoonPhotoMosaic.dir/cmake_clean.cmake
.PHONY : CMakeFiles/MoonPhotoMosaic.dir/clean

CMakeFiles/MoonPhotoMosaic.dir/depend:
	cd /Users/moriissei/Desktop/UCSC/Research/MoonPhotoMosaic && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /Users/moriissei/Desktop/UCSC/Research/MoonPhotoMosaic /Users/moriissei/Desktop/UCSC/Research/MoonPhotoMosaic /Users/moriissei/Desktop/UCSC/Research/MoonPhotoMosaic /Users/moriissei/Desktop/UCSC/Research/MoonPhotoMosaic /Users/moriissei/Desktop/UCSC/Research/MoonPhotoMosaic/CMakeFiles/MoonPhotoMosaic.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/MoonPhotoMosaic.dir/depend

