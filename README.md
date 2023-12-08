# ubuntu系统dotfiles

> 第一步 安装 stow

``` shell
sudo apt update && sudo apt install stow
sudo apt install tmux
```

> 第二步 git clone

``` shell
git clone https://github.com/liangkaiwen159/dotfiles.git --recursive

cd ~/dotfiles
# 需要哪个stow哪个
stow vim
vim -c "PlugInstall" -c "q" -c "q"
stow git
stow zsh
stow tmux
```
> 使用nvim
1. 安装nvim
    github官方仓库下载发行版的稳定版本
    tar -xzvf 解压到/usr/local/nvim目录
```shell
mkdir -p ~/.config/nvim
stow -d ~/dotfiles -t ~/.config/nvim nvim
echo "export PATH=$PATH:/usr/local/nvim" >> ~/.zshrc
# 安装python-venv 注意python版本, Mason安装python-lsp-server的时候需要
sudo apt install python3.8-venv
# 安装neovim的python支持 将Python.h添加到source路径 安装Leaderf的时候需要
export C_INCLUDE_PATH=/usr/include/python3.8:$C_INCLUDE_PATH
python3 -m pip install --user --upgrade pynvim
```
