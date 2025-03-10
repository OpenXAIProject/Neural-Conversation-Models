#!/usr/bin/env bash
# examples
# bash RunExportTestSamples.sh 0 HRED 30 True False 3 1 30.pkl
# bash RunExportTestSamples.sh 0 SpeakAddr 30 True True 3 1 30.pkl

export CUDA_VISIBLE_DEVICES=$1

python export_test_responses.py --data=tc_10_10 --model=$2 --batch_size=$3 --pretrained_wv=$4 --users=$5 --n_context=$6 --n_sample_step=$7 --checkpoint=$8

wait

