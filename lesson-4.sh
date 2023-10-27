#!/bin/bash


# make a for loop that counts how many times the letter "t" in the word "shelter"

sample_word="shelter"

count = $(echo -n $sample_word | grep "t" | wc -c)

echo $count

#TODO something with $# works too

#using "hash tag" symbol will print length of the string
for (( itr=0; itr<${#sample_word}; itr++ )); do
  #create a substring of "sample_word". the substring starts at position $itr and is of length 1... 
  echo "${sample_word:$itr:1}"
  # this is why bash sucks with string manipulation...
  if [ $itr == "t" ]; then
    echo "got a t?"
    (($count+=1))
    #apparently these work too..
    #let "count=count+1" 
    #let "count+=1"
    #let "count++"
done
