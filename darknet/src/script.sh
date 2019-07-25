#!/bin/bash

for i in *.c
do
	echo $i
	grep main $i
done

