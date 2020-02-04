# Задание 1. 

# Создать файл file1 и наполнить его произвольным содержимым. Скопировать его в file2. 
# Создать символическую ссылку file3 на file1. Создать жесткую ссылку file4 на file1. 
# Посмотреть, какие айноды у файлов. Удалить file1. Что стало с остальными созданными файлами? 
# Попробовать вывести их на экран.

echo 'text' > file1;
cat file1 > file2;
ln -s file1 file3;
ln file1 file4;
ls -ila; # айноды одинаквые у файла и жесткой ссылки, остальные разные
rm file1; ls -ila; # символическая ссылка file3 перестала работать, остальные файлы в порядке