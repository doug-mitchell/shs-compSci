#!/bin/bash


# make a for loop that counts how many times the letter "t" in the word "shelter"

sample_word="shelter"


count=0
for (letter in $sample_word); do
	if [ $letter == "t" ]; then
		count = count + 1
	fi
done

echo There are $count letter t's in the word	

