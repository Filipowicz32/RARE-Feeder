#!/bin/bash

# John Filipowicz
# Radford University

# Purpose: Capture images from webcam and make them into a video

# Loop control variable, do not change
i=0

location=/media/pi/FEEDER_DATA
timestamp=$(date +"%m-%d-%Y_%H-%M-%S")
mkdir -p $location/images/$timestamp
#rm $location/images/*.jpeg

while [ $i -lt 10 ]
do
	streamer -f jpeg -r 640x480 -o $location/images/$timestamp/image$i.jpeg
	let i=i+1
done


# Uncomment the below lines if you want to do the image processing immediately.

#mogrify -resize 800x800 $location/images/*.jpeg
#convert $location/images/*.jpeg -delete 10 -morph 10 $location/images/%05d.jpeg
#avconv -r 25 -i $location/images/%05d.jpeg -qscale 2 $location/test.mp4
