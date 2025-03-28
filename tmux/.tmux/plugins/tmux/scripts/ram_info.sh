#!/usr/bin/env bash
# 设置区域信息，确保使用正确的语言环境
export LC_ALL=en_US.UTF-8

current_dir="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"
source $current_dir/utils.sh

get_ratio()
{
  case $(uname -s) in
    Linux)
      # 提取内存信息
      mem_info=$(free -m | awk 'NR==2 {print $3, $7, $2}')
      # 解析数值
      read used available total <<< "$mem_info"
      
      # 计算实际使用的内存（总内存减去可用内存）
      adjusted_used=$((total - available))

      # 格式化输出
      if ((adjusted_used < 1024)); then
        echo "${adjusted_used}MB/${total}MB"
      else
        adjusted_used_gb=$((adjusted_used / 1024))
        total_gb=$((total / 1024))
        echo "${adjusted_used_gb}GB/${total_gb}GB"
      fi
      ;;

    Darwin)
      # macOS的内存使用情况代码
      used_mem=$(vm_stat | grep ' active\|wired ' | sed 's/[^0-9]//g' | paste -sd ' ' - | awk -v pagesize=$(pagesize) '{printf "%d\n", ($1+$2) * pagesize / 1048576}')
      total_mem=$(system_profiler SPHardwareDataType | grep "Memory:" | awk '{print $2 $3}')
      if ((used_mem < 1024 )); then
        echo "${used_mem}MB/$total_mem"
      else
        memory=$((used_mem/1024))
        echo "${memory}GB/$total_mem"
      fi
      ;;

    FreeBSD)
      # FreeBSD的内存使用情况代码
      hw_pagesize="$(sysctl -n hw.pagesize)"
      mem_inactive="$(($(sysctl -n vm.stats.vm.v_inactive_count) * hw_pagesize))"
      mem_unused="$(($(sysctl -n vm.stats.vm.v_free_count) * hw_pagesize))"
      mem_cache="$(($(sysctl -n vm.stats.vm.v_cache_count) * hw_pagesize))"

      free_mem=$(((mem_inactive + mem_unused + mem_cache) / 1024 / 1024))
      total_mem=$(($(sysctl -n hw.physmem) / 1024 / 1024))
      used_mem=$((total_mem - free_mem))
      if ((used_mem < 1024 )); then
        echo "${used_mem}MB/$total_mem"
      else
        memory=$((used_mem/1024))
        echo "${memory}GB/$total_mem"
      fi
      ;;

    OpenBSD)
      # OpenBSD的内存使用情况代码
      hw_pagesize="$(pagesize)"
      used_mem=$(( ( 
$(vmstat -s | grep "pages active$" | sed -ne 's/^ *\([0-9]*\).*$/\1/p') +
$(vmstat -s | grep "pages inactive$" | sed -ne 's/^ *\([0-9]*\).*$/\1/p') +
$(vmstat -s | grep "pages wired$" | sed -ne 's/^ *\([0-9]*\).*$/\1/p') +
$(vmstat -s | grep "pages zeroed$" | sed -ne 's/^ *\([0-9]*\).*$/\1/p') +
0) * hw_pagesize / 1024 / 1024 ))
      total_mem=$(($(sysctl -n hw.physmem) / 1024 / 1024))
      total_mem=$(($total_mem/1024))
      if (( $used_mem < 1024 )); then
        echo $used_mem\M\B/$total_mem\G\B
      else
        memory=$(($used_mem/1024))
        echo $memory\G\B/$total_mem\G\B
      fi
      ;;

    CYGWIN*|MINGW32*|MSYS*|MINGW*)
      # TODO - Windows兼容性
      ;;
  esac
}

main()
{
  ram_label=$(get_tmux_option "@dracula-ram-usage-label" "RAM")
  ram_ratio=$(get_ratio)
  echo "$ram_label $ram_ratio"
}

# 运行主驱动程序
main
