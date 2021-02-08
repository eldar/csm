#!/bin/sh

. ~/anaconda3/etc/profile.d/conda.sh
conda activate pytorch-csm

python -m csm.experiments.csm.csp --name=csm_bird_net_wpose --n_data_workers=4 --dataset=cub  --display_port=8094 --scale_bias=0.75 --multiple_cam_hypo=False --use_gt_quat=True --pred_cam=True 
