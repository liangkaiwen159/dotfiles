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

# >>> conda initialize >>>
# !! Contents within this block are managed by 'conda init' !!



__conda_setup="$('/home/xcy/miniconda3/bin/conda' 'shell.bash' 'hook' 2> /dev/null)"
if [ $? -eq 0 ]; then
    eval "$__conda_setup"
else
    if [ -f "/home/xcy/miniconda3/etc/profile.d/conda.sh" ]; then
        . "/home/xcy/miniconda3/etc/profile.d/conda.sh"
    else
        export PATH="/home/xcy/miniconda3/bin:$PATH"
    fi
fi
unset __conda_setup



# <<< conda initialize <<<

alias command="gedit /home/xcy/tools/command"
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
source /home/xcy/kevin_ws/ros_ws/devel/setup.zsh
source /home/xcy/kevin_ws/ros_apriltag_408/devel/setup.zsh

#export DISPLAY=10.56.157.92:0.0

alias starts="sudo docker start sim2real_server"
alias startc="sudo docker start j_client"
alias startrc="sudo docker start rmus_client"
alias startp="sudo docker start zealous_hamilton"

alias stops="sudo docker stop sim2real_server"
alias stopc="sudo docker stop j_client"
alias stopp="sudo docker stop zealous_hamilton"

alias sbash="sudo docker exec -it -u sim2real sim2real_server /bin/bash"
alias cbash="sudo docker exec -it -u sim2real j_client /bin/bash"
alias rcbash="sudo docker exec -it -u sim2real rmus_client /bin/bash"
alias pbash="sudo docker exec -it -u sim2real zealous_hamilton /bin/bash"

alias limit="sudo nvidia-smi -pm 1;sudo nvidia-smi -pl 165"

alias sim2real="conda activate number_rec"
alias rtx="conda activate rtx3070ti"
alias detectron2="conda activate detectron"

alias dev_start="docker start apollo_dev_xcy"
alias dev_into="bash ~/kevin_ws/apollo/docker/scripts/dev_into.sh"
alias dreamview_start="bash /apollo/scripts/bootstrap.sh"
alias dreamview_stop="bash /apollo/scripts/bootstrap.sh stop"

alias set_proxy="export http_proxy="http://127.0.0.1:8089";export https_proxy="http://127.0.0.1:8089""
alias unset_proxy="unset http_proxy;unset https_proxy"

alias connect_to_titan="ssh -X xcy@10.1.76.228"

alias display2host="export DISPLAY="10.56.2.56:0.0""
PATH=/opt/go/bin:${PATH}
