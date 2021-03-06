#!/usr/bin/env bash
python train_i3d.py --train_list data/ucf101/ucf101_flow_train_split_1.txt \
--val_list data/ucf101/ucf101_flow_val_split_1.txt \
--dataset ucf101 \
--mode flow --arch se_bilinear_i3d \
--save_model checkpoints/ \
--lr 0.001 --lr_steps 10 20 25 30 35 40 --epochs 45 --batch-size 3 \
--snapshot_pref checkpoints/ \
--dropout 0.3
