#!/bin/bash


$index 
while IFS= read -r line
do
  index=$[ $index + 1 ]
  if [ "$index" = "$line" ]; then
    echo '�������� ��������� '"$line"' ������ �������'
  else
    echo '������!������!������!������! ��������� ������ ��� �������� ��������� '"$index"
    exit 1
  fi
done <  important_data_for_ai_module_2.txt
if [ "$index" = 5 ];then
  echo '�������� ���������� '"$line"' ������ �������'
else
  echo '������!������!������!������! �� ������� ���������� ������� ... '"$index"
  exit 1
fi

echo '������ 2 ������� ��������!'
exit 0