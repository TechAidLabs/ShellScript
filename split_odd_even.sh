#!/bin/bash

# 配列 K を初期化して 1〜10 を格納
K=()
for ((i=0; i<=9; i++)); do
    K[i]=$((i+1))
done

# odd と even を空配列で初期化
odd=()
even=()

# K の値をループして奇偶を振り分け
for val in "${K[@]}"; do
    (( val % 2 )) && odd+=($val) || even+=($val)
done

# 出力
echo "odd: ${odd[@]}"
echo "even: ${even[@]}"
