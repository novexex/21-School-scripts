#!/bin/bash

echo 'Скрипт должен лежать в src'
read -p 'Введи номер дня: ' day_num

if [[ $day_num =~ ^[1-9]+$ ]]
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
    # day02_ex07.sql
    if ((i < 10))
    then
        dir_name='ex0'$i
    else
        dir_name='ex'$i
    fi
    file_name='day'$day_num'_'$dir_name'.sql'
    mkdir $dir_name
    touch $dir_name/$file_name
done

echo 'Категории созданы'
