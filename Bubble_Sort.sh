#!/bin/bash
echo "**** Bubble Sort ****"
echo "Enter Values in array : "
read -a arr
# The user will get an error if they don't input the values in array
echo "Before sort : ${arr[@]:?Enter Values}"
n=${#arr[@]}
for (( i=0 ; i<$n; i++ ));
do
        swap=false
        for (( j=0; j<$(( $n - $i - 1)); j++ ));
        do
                if [ ${arr[$j]} -gt ${arr[$(($j+1))]} ];
                then
                        temp=${arr[$j]}
                        arr[$j]=${arr[$(($j+1))]}
                        arr[$(($j+1))]=$temp
                        swap=true
                fi
        done
        if [ "$swap" = false ];
        then
                break
        fi
done
echo "After sort : ${arr[@]}"