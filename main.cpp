#include <math.h>
#include <stdio.h>
#include <sys/time.h>
#include <string>
#include <math.h>

#include <opencv2/opencv.hpp>
#include <opencv2/core/ocl.hpp>  //Actually opencv3.2, in spite of the name

const int RES = 10;

using namespace cv;

int main(int argc, char** argv )
{
	
	Mat input_img = imread(argv[1], IMREAD_UNCHANGED);
	Mat gray_img;
	Mat bin_img;

	cvtColor(input_img, gray_img, CV_BGR2GRAY);
	threshold(gray_img, bin_img, 0, 255, THRESH_BINARY | THRESH_OTSU);

	resize(bin_img, bin_img, Size(), 4.0*RES/bin_img.cols, 4.0*RES/bin_img.rows);

	bitwise_not(bin_img, bin_img);

	Mat_<unsigned char> inp_1b = bin_img;
	Mat_<unsigned char> out_1b = bin_img;

	for ( int y = 0; y < inp_1b.size().height; y+=4 ) {
		for ( int x = 0; x < inp_1b.size().width; x+=4 ) {
			inp_1b(y, x) = 0;
			inp_1b(y, x+3) = 0;
			inp_1b(y+3, x) = 0;
			inp_1b(y+3, x+3) = 0;

			unsigned char average;

			average = (inp_1b(y+1, x) + inp_1b(y+2, x))/ 2;
			bool le = average < 127.5 ? false : true;
			inp_1b(y+1, x) = average < 127.5 ? 0 : 255;
			inp_1b(y+2, x) = average < 127.5 ? 0 : 255;

			average = (inp_1b(y+0, x+1) + inp_1b(y+1, x+1) + inp_1b(y+2, x+1) + inp_1b(y+3, x+1))/ 4;
			bool cl= average < 127.5 ? false : true;
			inp_1b(y+0, x+1) = average < 127.5 ? 0 : 255;
			inp_1b(y+1, x+1) = average < 127.5 ? 0 : 255;
			inp_1b(y+2, x+1) = average < 127.5 ? 0 : 255;
			inp_1b(y+3, x+1) = average < 127.5 ? 0 : 255;

			average = (inp_1b(y+0, x+2) + inp_1b(y+1, x+2) + inp_1b(y+2, x+2) + inp_1b(y+3, x+2))/ 4;
			bool cr = average < 127.5 ? false : true;
			inp_1b(y+0, x+2) = average < 127.5 ? 0 : 255;
			inp_1b(y+1, x+2) = average < 127.5 ? 0 : 255;
			inp_1b(y+2, x+2) = average < 127.5 ? 0 : 255;
			inp_1b(y+3, x+2) = average < 127.5 ? 0 : 255;

			average = (inp_1b(y+1, x+3) + inp_1b(y+2, x+3))/ 2;
			bool ri = average < 127.5 ? false : true;
			inp_1b(y+1, x+3) = average < 127.5 ? 0 : 255;
			inp_1b(y+2, x+3) = average < 127.5 ? 0 : 255;


			if ( !le && !cl && !cr && !ri) 		printf("🌑");
			else if ( le && !cl && !cr && !ri) 	printf("🌘");
			else if ( !le && cl && !cr && !ri)	printf("🌗");
			else if ( le && cl && !cr && !ri) 	printf("🌗");
			else if ( !le && !cl && cr && !ri) 	printf("🌓");
			else if ( le && !cl && cr && !ri) 	printf("🌕");
			else if ( !le && cl && cr && !ri) 	printf("🌕");
			else if ( le && cl && cr && !ri) 	printf("🌖");
			else if ( !le && !cl && !cr && ri) 	printf("🌒");
			else if ( le && !cl && !cr && ri) 	printf("🌑");
			else if ( !le && cl && !cr && ri) 	printf("🌔");
			else if ( le && cl && !cr && ri) 	printf("🌕");
			else if ( !le && !cl && cr && ri) 	printf("🌓");
			else if ( le && !cl && cr && ri) 	printf("🌓");
			else if ( !le && cl && cr && ri) 	printf("🌔");
			else if ( le && cl && cr && ri) 	printf("🌕");
		}
	}

	printf("\n");

	cvtColor(inp_1b, bin_img, CV_GRAY2BGR);
	resize(bin_img, bin_img, Size(), 4.0*RES, 4.0*RES, INTER_NEAREST);

	for ( double i = 1; i < RES; i++ ) {
		line(bin_img, Point(0, (int)(i*bin_img.cols/RES)), Point(bin_img.rows, (int)(i*bin_img.cols/RES)), Scalar(0, 0, 255), 5, CV_AA);
	}

	for ( double i = 1; i < RES; i++ ) {
		line(bin_img, Point((int)(i*bin_img.rows/RES), 0), Point((int)(i*bin_img.rows/RES), bin_img.cols), Scalar(0, 0, 255), 5, CV_AA);
	}

	imwrite("out.png", bin_img);

	
	return 0;
}
