# Задание 3. 

# Создать два произвольных файла. Первому присвоить права на чтение, запись для владельца 
# и группы, только на чтение для всех. Второму присвоить права на чтение, 
# запись только для владельца. Сделать это в численном и символьном виде.

touch fl1 fl2;
chmod ug=rw,o=r fl1;
chmod u=rw,go= fl2;
ls -ila;
chmod 664 fl1;
chmod 600 fl2;
ls -ila;
