#!/bin/bash

hello(){
	echo "我在中国QAQ,Hello World"
	return 111
}

a=1
b=9

while [[ "$a" -le 5 && "$b" -ge 5 ]]
do
	echo "我在不在中国呢？"
	if [[ "$a" -eq 4 && "$b" -eq 6 ]]
	then
		hello
		echo $?
		break
	else	
		echo "我不在中国,此时a="$a",b="$b""
	fi
	let a++
	let b--
	sleep 0.5
done

echo "循环结束了"
