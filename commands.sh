#!/bin/bash

#ffmpeg -ss 00:00:00 -t 00:00:30 -i /homeappl/home/gcao/tmp/Video-Caption/data/test.mp4 -r 5.0 /homeappl/home/gcao/tmp/Video-Caption/data/santa/img/s%4d.jpg
#ffmpeg -i /homeappl/home/gcao/tmp/Video-Caption/data/ test.mp4 -vf subtitles=santa.srt out.mp4


cd /homeappl/home/gcao/local/scripts
source gpu.sh

# Extract feature..
cd /homeappl/home/gcao/tmp/Video-Caption 
srun ./caffe_feat.py

# Activate Torch
#. /homeappl/home/gcao/wrk/torch/install/bin/torch-activate

# Do caption generation
#cd /wrk/gcao/neuraltalk2/ 
#th eval.lua -model /wrk/gcao/neuraltalk2/model/model_coco.t7 -image_folder /wrk/gcao/neuraltalk2/data/santa/key  -num_images -1

#srun ./crawl.py

# training
#th train.lua -input_h5 info/im2text.h5 -input_json info/im2text.json

# preprocessing
#python prepro.py --input_json /homeappl/home/gcao/nt/info/SBUcap.js --num_val 5000 --num_test 5000 --images_root /homeappl/home/gcao/Dataset2/im2text/images/ --word_count_threshold 5 --output_json /homeappl/home/gcao/nt/info/im2text.json --output_h5 /homeappl/home/gcao/nt/info/im2text.h5
