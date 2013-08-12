#!/bin/bash --posix

IFS=''

# The encoded symbols
SYMS="оеарсухОЕАНТРСВКМХ"

while read -r -n 1000000 line
     do
	while read -r -N 1 char
             do
		case "$char" in
			[^$SYMS]) printf "%s" "$char";;
			"о")      printf "%s" "o";;
			"е")      printf "%s" "e";;
			"а")      printf "%s" "a";;
			"р")      printf "%s" "p";;
			"с")      printf "%s" "c";;
			"у")      printf "%s" "y";;
			"х")      printf "%s" "x";;
			"О")      printf "%s" "O";;
			"Е")      printf "%s" "E";;
			"А")      printf "%s" "A";;
			"Н")      printf "%s" "H";;
			"Т")      printf "%s" "T";;
			"Р")      printf "%s" "P";;
			"С")      printf "%s" "C";;
			"В")      printf "%s" "B";;
			"К")      printf "%s" "K";;
			"М")      printf "%s" "M";;
			"Х")      printf "%s" "X";;
		esac
	done <<< "$line"
done

