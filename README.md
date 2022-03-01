My custom detectron 2. Link to the Original repository: https://github.com/facebookresearch/detectron2

## Installation
```
conda create -n bcnet python=3.7 -y
source activate bcnet

conda install pytorch==1.10.0 torchvision==0.11.0 cudatoolkit=11.3 -c pytorch
pip install ninja yacs cython matplotlib tqdm
pip install opencv-python==4.4.0.40
pip install scikit-image
pip install timm==0.4.12

# coco api
git clone https://github.com/cocodataset/cocoapi.git
cd cocoapi/PythonAPI
python setup.py build_ext install

cd my_dt2/
python3 setup.py build develop

pip install fvcore==0.1.1.dev200512 # just in case
```
## Data registration
Register the data in `detectron2/data/datasets/builtin.py`. See `register_kins()` in this file for references.

## Adding config