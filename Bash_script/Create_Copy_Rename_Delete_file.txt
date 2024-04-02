#!/bin/bash

echo "Программа по созданию, переименованию и удалению файлов"
echo "Введите путь к директории:"
read dir_path

echo "Введите имя первого файла"
read file1

touch "${dir_path}/${file1}"

echo "Введите имя второго файла"
read file2

touch "${dir_path}/${file2}"

echo "Переименовываем первый файл ${file1}"
echo "Введите новое имя первого файла"
read new_file1
mv "${dir_path}/${file1}" "${dir_path}/${new_file1}"

echo "Копируем файл ${file2}"
echo "Введите новое имя копии второго файла"
read new_file2
cp "${dir_path}/${file2}" "${dir_path}/${new_file2}"


echo "Удаляем оригинальный второй файл ${file2}"
rm "${dir_path}/${file2}"


echo "Операции завершены"


