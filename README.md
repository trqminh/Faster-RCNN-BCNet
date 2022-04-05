Unofficial BCNet with Faster RCNN meta-architecture.

- Link to the original repository with FCOS meta-architecture: https://github.com/lkeab/BCNet
- Link to the paper: https://arxiv.org/abs/2103.12340.

This repo is initialized from the detectron2 repository, which runs faster-rcnn as default. The added BCNet source code can be found at these commits: [mask head](https://github.com/trqminh/Faster-RCNN-BCNet/commit/869450c7712d0484d7fb9ca4d06d4c649e10a2fb), [modeling](https://github.com/trqminh/Faster-RCNN-BCNet/commit/33c3984018da9bce003ff127306beddb3a8ae6b4), [data](https://github.com/trqminh/Faster-RCNN-BCNet/commit/181a4dac1e94cc98b9e530aceffce81df59b94d8).
## Installation
```
conda create -n dt2 python=3.7 -y
source activate dt2 

conda install pytorch==1.10.0 torchvision==0.11.0 cudatoolkit=11.3 -c pytorch
pip install ninja yacs cython matplotlib tqdm
pip install opencv-python==4.4.0.40
pip install scikit-image
pip install timm==0.4.12

# coco api
git clone https://github.com/cocodataset/cocoapi.git
cd cocoapi/PythonAPI
python setup.py build_ext install

cd Faster-RCNN-BCNet/
python3 setup.py build develop

pip install fvcore==0.1.1.dev200512 # just in case
```
## Dataset registration
Follow the [scripts](https://github.com/lkeab/BCNet#reference-script-for-producing-bilayer-mask-annotation) of the original repository to create the right annotation file for BCNet.

Register the data in `detectron2/data/datasets/builtin.py`. See `register_kins()` in this file for references.
## Available configs
Available config for reproducing the paper results on the KINS dataset: [kins config](configs/exps/kins_rcnn_rn101.yaml)
## Training
Custom parameters at `scripts/all.sh` and run it for training.