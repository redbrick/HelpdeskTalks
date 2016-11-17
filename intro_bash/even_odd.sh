#!/bin/bash

echo "Enter a Number."
read n

num=$(expr $n % 2)
if [ $num -eq 0 ]
then
    echo "Even Number."
else
    echo "Odd Number."
fi
