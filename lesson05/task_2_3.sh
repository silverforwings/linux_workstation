#!/bin/bash

# Задание 2.3

# Написать скрипт rename.sh, аналогичный разобранному, но порядковые
# номера файлов выравнивать, заполняя слева нуля до ширины максимального
# значения индекса: newname000.jpg, newname102.jpg (Использовать printf).
# Дополнительно к 3 добавить проверку на расширение,
# чтобы не переименовать .sh.

# Сгенерировали тестовые файлы:
for i in {001..100}; do echo File $i > IMG_$i.png; done

# Скрипт для переименования - практически полностью скопировано из методички:
# сначала проверим,  все ли аргументы заданы и если не все, укажем, как использовать,
# если число аргументов меньше 2, 
if [ $# -lt 2 ]
 then
        # выводим на экран правила использования
        echo Usage:
        #вместо $0 будет подставлено имя файла
        echo $0 newprefix file1 file2 …
        #выходим с кодом возврата 1 (т.е. false)
        exit 1
fi
# сохраним префикс из $1 в переменную
     prefix=$1
     #сдвинем аргументы влево, 
     shift
     #теперь с $1 имена файлов
     #будем считать порядковый номер файла, пока пусть будет 0
     count=0
     #в цикле для всех аргументов
     for file in $*
     do
             echo $file
             if [[ $file  =~ ".png" ]]
             then
                     echo $file
                     #увеличиваем count на 1
                     count=`printf "%03d" $[count+1]`
                     #переименовываем следующий файл в ПрефиксПорядковыйномер.png
                     #ключ -n запретит перезаписать файл, если он уже есть с таким именем
                     mv -n "${file}" "${prefix}${count}.png"
             fi
     done
     #сообщим код возврата 0 при выходе (true)
     exit 0
     