# minilibc_asm

An epitech project realised in 1 week in 2020.

Project realised in Assembly x86-64.

## Presentation

The goal of the project is to create a dynamic library to replace th standard C library.

## Prerequisites

+ A Linux environment

## How to compile the project

You just have to run the `make` command.

## How to use it

You just need to upload your minilibc library instead of the glibc library with this command

`export LD_PRELOAD=./libasm.so`

or execute your program with your minilibc library

`LD_PRELOAD=./libasm.so ./a.out`

## Functions

+ strcmp(): This function compares the two strings s1 and s2. It returns 0 if the two strings are equals, -1 if s1 is less than s2 and 1 if s1 is greater than s2.

+ strcasecmp(): The strcasecmp() function compares the two strings s1 and s2, ignoring the case of the characters. It returns an integer less than, equal to, or greater than zero if s1 is found, respectively, to be less than, to match, or be greater than s2.

+ strncmp():

+ memcpy():

+ rindex():

+ strstr():

+ strcspn():

+ strlen():

+ strchr():

+ memset():

+ memmove():
