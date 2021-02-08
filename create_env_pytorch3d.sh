#!/bin/sh

#ENV=$1
ENV=pytorch3d

. ~/anaconda3/etc/profile.d/conda.sh

conda create -y -n $ENV python=3.8
conda activate $ENV

# MAIN INSTALL
conda install -y pytorch torchvision torchaudio cudatoolkit=10.2 -c pytorch
conda install -y -c conda-forge -c fvcore -c iopath fvcore iopath
conda install -y -c bottler nvidiacub

pip install "git+https://github.com/facebookresearch/pytorch3d.git"

conda install -y matplotlib scikit-image plotly ipython jupyter imageio scipy
conda install -y -c anaconda absl-py
pip install opencv-python pymesh meshzoo visdom yattag tqdm dominate imageio
