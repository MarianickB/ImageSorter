#!/bin/bash


sortedimages=`find $1 -type f -exec ls -tr {} + | grep ".jpg"`

output=`echo $1 | tr '/' '_'`.jpg

convert -append $sortedimages $output


