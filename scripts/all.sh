# README: 
# 1. change the experiment name for training configuration
# 2. Look for the config file (exp_name) and change the output dir 
# as the output dir here

#python3 setup.py build develop #--no-deps # for building d2
export PYTHONPATH=$PYTHONPATH:`pwd`
#export CUDA_LAUNCH_BLOCKING=1 # for debug

ID=159

# TODO: Declare experiment name
exp_name="kins_rcnn_rn101"


CUDA_VISIBLE_DEVICES=0 python3 tools/train_net.py --num-gpus 1 \
	--config-file configs/exps/${exp_name}.yaml 2>&1 | tee log/train_log_$ID.txt