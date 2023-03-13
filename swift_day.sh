#!/bin/bash

echo 'Скрипт должен лежать в src'
read -p 'Введи номер дня: ' day_num

if [[ $day_num =~ ^[0-9]+$ ]]
then
    if (( $day_num < 10 ))
    then
        day_num='0'$day_num
    fi
fi

if [[ $day_num =~ ^[0-9]+$ ]]
then
    echo 'Nice!'
else
    echo 'Неправильный формат'
fi

read -p 'Номер последнего задания в дне: ' ex
ex=$((10#$ex))

for (( i=0; i <= $ex; i++ ))
do
    if ((i < 10))
    then
        tmp='0'$i
    else
        tmp=$i
    fi
    file_name='Day'$day_num'_'$tmp'.swift'
    dir_name='Day'$day_num'_'$tmp
    mkdir $dir_name
    touch $dir_name/$file_name
done

echo 'Категории созданы'
