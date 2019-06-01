#!/usr/bin/env bash

# train
CUDA_VISIBLE_DEVICES=1 python train.py --model mobilenet \
    --dataset citys --ohem False --lr 1e-2 --epochs 80

# eval
CUDA_VISIBLE_DEVICES=1 python eval.py --model mobilenet \
    --dataset citys

# fps
CUDA_VISIBLE_DEVICES=1 python test_fps.py --model mobilenet \
    --dataset citys