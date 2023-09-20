#!/bin/bash

# "files" 디렉토리 내의 파일을 읽어서 디렉토리로 이동
for file in files/*; do
    if [ -f "$file" ]; then  # 파일인지 확인
        filename=$(basename "$file")  # 파일 이름 추출
        first_letter="${filename:0:1}"  # 파일 이름의 첫 번째 문자 추출

        # 파일을 해당 디렉토리로 이동
        mv "$file" "$first_letter/"
        echo "이동: $filename -> $first_letter/"
    fi
done