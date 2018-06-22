cmake_minimum_required(VERSION 2.8)
project(MoonPhotoMosaic)
find_package(OpenCV REQUIRED)
SET(CMAKE_CXX_FLAGS "${CMAKE_CXX_FLAGS} -Wall -Wextra")

add_executable( MoonPhotoMosaic main.cpp )
target_compile_features(MoonPhotoMosaic PUBLIC cxx_lambdas)
target_link_libraries( MoonPhotoMosaic ${OpenCV_LIBS} )

