# Задание 7. 

# * Создать директорию, в которой есть несколько файлов. 
# Сделать так, чтобы открыть файлы можно только, зная имя файла, 
# а через ls список файлов посмотреть нельзя.

# Примечание. Задания с 5 по 7 даны для тех, кому упражнений 1-4 показалось недостаточно.

mkdir invisible_files;
touch invis{01..05}.inv;
chmod -r invisible_files; # запрет на чтение директории
# 2 вариант решения (делаем скрытыми все файлы):
# cd invisible_files;
# for i in {01..05};
# do mv invis$i.inv .invis$i.inv;
# done;
ls # в обоих вариантах решения так файлов не видно, но зная имя можно открыть
