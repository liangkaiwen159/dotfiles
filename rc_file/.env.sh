alias la='ls -A'
alias l='ls -CF'

# Add an "alert" alias for long running commands.  Use like so:
#   sleep 10; alert
alias alert='notify-send --urgency=low -i "$([ $? = 0 ] && echo terminal || echo error)" "$(history|tail -n1|sed -e '\''s/^\s*[0-9]\+\s*//;s/[;&|]\s*alert$//'\'')"'

# Alias definitions.
# You may want to put all your additions into a separate file like
# ~/.bash_aliases, instead of adding them here directly.
# See /usr/share/doc/bash-doc/examples in the bash-doc package.

if [ -f ~/.bash_aliases ]; then
    . ~/.bash_aliases
fi




alias command="gedit /home/liangkaiwen/tools/command"
#export PYTHONPATH=$PYTHONPATH:/usr/lib/python3/dist-packages


export LD_LIBRARY_PATH=$LD_LIBRARY_PATH:/usr/local/cuda-10.2/lib64
export PATH=$PATH:/usr/local/cuda-10.2/bin
#export CUDA_HOME=$CUDA_HOME:/usr/local/cuda-10.2
export CUDA_HOME=/usr/local/cuda-10.2

#export ROS_PACKAGE_PATH=${ROS_PACKAGE_PATH}:/home/xcy/kevin_ws/ros_ws/src//ORB_SLAM2/Examples/ROS

##OpenCV3
#export PKG_CONFIG_PATH=/usr/local/opencv3/lib/pkgconfig
#export LD_LIBRARY_PATH=/usr/local/opencv3/lib

source /opt/ros/noetic/setup.zsh
source /home/liangkaiwen/kevin_ws/ros_ws/devel/setup.zsh
source /home/liangkaiwen/kevin_ws/ros_apriltag_408/devel/setup.zsh

#export DISPLAY=10.56.157.92:0.0

alias limit="sudo nvidia-smi -pm 1;sudo nvidia-smi -pl 165"

alias detectron2="conda activate detectron"

alias starts="sh /home/liangkaiwen/kevin_ws/sim2real2023/scripts/launch_own.sh"
alias startc="docker start client"

alias stops="sh /home/liangkaiwen/kevin_ws/sim2real2023/scripts/halt.sh"
alias stopc="docker stop client"

#alias cbash="ssh root@0.0.0.0 -p 5000"
#alias cbash="docker exec -it client /opt/ros/noetic/env.sh /opt/workspace/devel_isolated/env.sh /opt/ep_ws/devel/env.sh bash"
alias cbash="docker exec -it client /bin/bash"
alias set_proxy="export http_proxy="http://127.0.0.1:8089";export https_proxy="http://127.0.0.1:8089""
alias unset_proxy="unset http_proxy;unset https_proxy"

alias connect_to_titan="ssh -X xcy@10.1.76.228"

alias display2host="export DISPLAY="10.56.2.56:0.0""
PATH=/opt/go/bin:${PATH}
export PATH=/home/liangkaiwen/.local/bin/:$PATH
