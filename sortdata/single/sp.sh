#!/bin/bash

# 读取数值并计算加速比
while read -r line; do
    # 分别读取两列数值
    old_time=$(echo $line | awk '{print $1}')
    new_time=$(echo $line | awk '{print $2}')

    # 计算加速比
    speedup=$(echo "scale=2; $old_time / $new_time" | bc)

    # 输出加速比
    echo "加速比: $speedup"
done < single_layer.txt