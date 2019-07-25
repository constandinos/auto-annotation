#!/bin/bash

VAR1="DroNet_car.cfg"
VAR2="DroNetV3_car.cfg"

if [ -d "./images" ]
then
	rm -r images
fi

mkdir images

#DroNet
if [ "$VAR1" = "$1" ]
then
	cd DroNet
	#Generate images from video
	./darknet detector demo ../data/car.data ../cfg/DroNet_car.cfg ../weights/DroNet_car.weights "../video/$2" > ../output.txt
	cd ../darknet
	#Annotate images
	./darknet detector test ../data/car.data ../cfg/DroNet_car.cfg ../weights/DroNet_car.weights -save_labels -dont_show -ext_output < ../images/train.txt >> output.txt
	cd ..

#DroNetV3
elif [ "$VAR2" = "$1" ]
then
	cd DroNet
	#Generate images from video
	./darknet detector demo ../data/car_ped.data ../cfg/DroNetV3_car.cfg ../weights/DroNetV3_car.weights "../video/$2" > ../output.txt
	cd ../darknet
	#Annotate images
	./darknet detector test ../data/car_ped.data ../cfg/DroNetV3_car.cfg ../weights/DroNetV3_car.weights -save_labels -dont_show -ext_output < ../images/train.txt >> output.txt
	cd ..

#Error message
else
	echo "Wrong format of arguments!"
fi

