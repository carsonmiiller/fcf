# ML Shourya

## Name
This folder is to handle the ML requirements of our bird feeded

## Description
We use YoloV3 to identify whether a bird exists within any image. If detected we use a pretrained Resnet50 Model to detect which species it is most likely from.


Our dataset (CUB_200_2011) is from the Caltech Vision Lab. We then modified it according to our needs.
We removed a lot of birds not found in Ohio as well as added a few that were missing. We also added more images to the Dataset to reflect well with our livestream.

@techreport{WahCUB_200_2011,
	Title = ,
	Author = {Wah, C. and Branson, S. and Welinder, P. and Perona, P. and Belongie, S.},
	Year = {2011}
	Institution = {California Institute of Technology},
	Number = {CNS-TR-2011-001}
}

## Authors and acknowledgment
Thanks to Keegan for helping me with the YoloV3, and everyone else in the group for their ideas

