#!/bin/bash
mergesort(){
        local arr=("$@")
        if [ "${#arr[@]}" -eq 1 ]; then
                echo "${arr[@]}"
        elif [ "${#arr[@]}" -eq 2 ]; then
                if [ "${arr[0]}" -gt "${arr[1]}" ]; then
                        echo "${arr[1]}" "${arr[0]}"
                else
                        echo "${arr[@]}"
                fi
        else
                local mid=($((${#arr[@]} / 2)))
                local left=($(mergesort "${arr[@]:0:$mid}"))
                local right=($(mergesort "${arr[@]:$mid}"))
                local result=()
                while [ ${#left[@]} -gt 0 ] && [ ${#right[@]} -gt 0 ]; do
                        if [ "${left[0]}" -gt "${right[0]}" ]; then
                                result+=("${right[0]}")
                                right=("${right[@]:1}")
                        else
                                result+=("${left[0]}")
                                left=("${left[@]:1}")
                        fi
                done
                echo  "${result[@]}" "${left[@]}" "${right[@]}"
        fi
}
arr=(12 11 13 5 6 7)
echo "Before Sort : ${arr[@]}"
sort_arr=($(mergesort "${arr[@]}"))
echo "After Sort : ${sort_arr[@]}"
