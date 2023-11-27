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

export LD_LIBRARY_PATH=$LD_LIBRARY_PATH:/usr/local/cuda-11.1/lib64
export PATH=$PATH:/usr/local/cuda-11.1/bin
export CUDA_HOME=/usr/local/cuda-11.1

#export ROS_PACKAGE_PATH=${ROS_PACKAGE_PATH}:/home/xcy/kevin_ws/ros_ws/src//ORB_SLAM2/Examples/ROS

##OpenCV3
#export PKG_CONFIG_PATH=/usr/local/opencv3/lib/pkgconfig
#export LD_LIBRARY_PATH=/usr/local/opencv3/lib

# source /opt/ros/noetic/setup.zsh
# source /home/liangkaiwen/kevin_ws/ros_ws/devel/setup.zsh
# source /home/liangkaiwen/kevin_ws/ros_apriltag_408/devel/setup.zsh

#export DISPLAY=10.56.157.92:0.0
alias set_proxy="export http_proxy="http://127.0.0.1:8089";export https_proxy="http://127.0.0.1:8089""
alias unset_proxy="unset http_proxy;unset https_proxy"

alias connect_to_titan="ssh -X xcy@10.1.76.228"
alias display2host="export DISPLAY="10.56.2.56:0.0""
export PATH=/home/liangkaiwen/.local/bin/:$PATH
