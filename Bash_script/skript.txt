#!/bin/bash

echo "Программа по созданию, переименованию и удалению файлов"
echo "Введите путь к директории:"
read dir_path

echo "Создаем 2 файла в директории $dir_path"
touch "${dir_path}/file1.txt" "${dir_path}/file2.txt"

echo "Переименовываем файл/Копируем файл..."
mv "${dir_path}/file1.txt" "${dir_path}/new_file1.txt"
cp "${dir_path}/file2.txt" "${dir_path}/new_file2_2.txt"

echo "Удаляем оригинальныq файл"
rm "${dir_path}/file2.txt"

echo "Операции завершены"
