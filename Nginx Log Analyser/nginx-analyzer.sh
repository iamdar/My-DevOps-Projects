#!/bin/bash

# Author: Darvin Basilio
# Date: 2024-01-08
# Project: Nginx analyzer

# Description: A simple tool to analyze logs from the command line

# Your script starts here

file_log=$1

echo "Hello, World! File is $file_log"

# Extract IP addresses and count occurrences
echo "Top 5 IP addresses with the most requests:"
awk '{print $1}' $file_log | sort | uniq -c | sort -nr | head -n 5 | awk '{print $2 " - " $1 " requests"}'

echo $' \n '

# Extract paths and count occurrences
echo "Top 5 most requested paths:"
awk '{print $7}' $file_log | sort | uniq -c | sort -nr | head -n 5 | awk '{print $2 " - " $1 " requests"}'


echo $' \n '

# Extract response status code and count occurrences
echo "Top 5 response status code:"
awk '{print $9}' $file_log | sort | uniq -c | sort -nr | head -n 5 | awk '{print $2 " - " $1 " requests"}'
