#!/bin/bash
echo "**** Selection Sort ****"
echo "Enter Values in array : "
read -a arr
# The user will get an error if they don't input the values in array
echo "Before Sort : ${arr[@]:?Enter values}"
for (( i=0; i<${#arr[@]}; i++ )) ; do
        max_val=$i
        for (( j=$(($i+1)) ; j<${#arr[@]} ; j++ )) ; do
                if [ ${arr[$i]} -gt ${arr[$j]} ]
                then
                        min_val=$j
                fi
                temp=${arr[$max_val]}
                arr[$max_val]=${arr[$min_val]}
                arr[$min_val]=$temp
        done
done
echo  "After Sort : ${arr[@]}"