catkin_make -DCATKIN_WHITELIST_PACKAGES="ros_slam;cv_bridge"
sudo rm -rf cuda
https://v3.iggfeed.xyz/c/866e6bab-67f4-43f9-a5f1-f0486ce58ec7
#多个GCC共存
sudo update-alternatives --install /usr/bin/gcc gcc /usr/bin/gcc-5 40
sudo update-alternatives --install /usr/bin/g++ g++ /usr/bin/g++-5 40
sudo update-alternatives --config gcc
sudo update-alternatives --config g++

#多个python共存
sudo update-alternatives --install /usr/bin/python python /usr/bin/python2.7 2 
sudo update-alternatives --install /usr/bin/python python /usr/bin/python3.8 1 
sudo update-alternatives --config python


python demo.py --config-file ../configs/COCO-Detection/retinanet_R_50_FPN_1x.yaml --input 000000000785.jpg --output ../output/ --opt MODEL.WEIGHTS '../detectron2/model_zoo/model_final_bfca0b.pkl' 
https://dl.fbaipublicfiles.com/detectron2/COCO-Detection/faster_rcnn_R_50_FPN_3x/137849458/model_final_280758.pkl
https://dl.fbaipublicfiles.com/detectron2/COCO-Detection/retinanet_R_50_FPN_1x/190397773/model_final_bfca0b.pkl 
ssh -q -X xcy@10.1.77.104
python main.py ctdet --exp_id steel --batch_size 36 --num_epochs 500 --lr 1.25e-4  --gpus 0,1

# docker
sudo docker login -u liangkaiwen159
docker token:
4542a543-347a-498e-adb4-32ffdf599c6c
4542a543-347a-498e-adb4-32ffdf599c6c

sudo nvidia-smi -pm 1
# nvidia显卡限制功耗
sudo nvidia-smi -pl 150

kevin_token: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
jiangzhou_token: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

alias entersim="roscd ros_x_habitat/ ; python3 ~/ros_x_habitat_ws/src/ros_x_habitat/src/scripts/roam_with_joy.py --hab-env-config-path ~/ros_x_habitat_ws/src/ros_x_habitat/configs/roam_configs/pointnav_rgbd_roam_mp3d_test_scenes.yaml"
alias keycontrol="rosrun teleop_twist_keyboard teleop_twist_keyboard.py"

export http_proxy="http://127.0.0.1:8889"
export https_proxy="http://127.0.0.1:8889"

export http_proxy="http://127.0.0.1:1089"
export https_proxy="http://127.0.0.1:1089"

#conda base
conda config --set auto_activate_base false

#按需导出req
pip install pipreqs
pipreqs ./
