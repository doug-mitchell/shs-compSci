#!/bin/bash


# make a for loop that counts how many times the letter "t" in the word "shelter"

sample_word="shelter"

count = $(echo -n $sample_word | grep "t" | wc -c)

echo $count

#TODO something with $# works too
