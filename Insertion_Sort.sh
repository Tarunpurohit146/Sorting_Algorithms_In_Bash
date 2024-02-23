#!/bin/bash
echo "**** Insertion Sort ****"
echo "Enter Values in array : "
# The user will get an error if they don't input the values in array
read -a arr
echo "Before sort : ${arr[@]:?Enter values}"
n=${#arr[@]}
for (( i=1 ; i<$n ; i++ ));
do
        key=${arr[$i]}
        j=$(($i-1))
        while [ $j -ge 0 ] && [ $key -lt ${arr[$j]} ]
        do
                arr[$(($j+1))]=${arr[$j]}
                j=$(($j-1))
        done
        arr[$(($j+1))]=$key
done
echo "After sort : ${arr[@]}"