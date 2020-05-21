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

+ strcmp(): This function compares the two strings s1 and s2.

+ strcasecmp(): The strcasecmp() function compares the two strings s1 and s2, ignoring the case of the characters.

+ strncmp(): The strncmp() function compares the n first bytes of the two strings s1 and s2.

+ memcpy(): The memcpy() function copies n bytes from memory area src to memory area dest. The memory areas must not overlap. Use memmove() if the memory areas do overlap.

+ rindex(): The rindex() function returns a pointer to the last occurrence of the character c in the string s.

+ strstr(): The strstr() function finds the first occurrence of the substring needle in the string haystack. The terminating null bytes (aq\0aq) are not compared.

+ strcspn(): The strcspn() function calculates the length of the initial segment of s which consists entirely of bytes not in reject.

+ strlen(): The strlen() function calculates the length of the string s, excluding the terminating null byte (aq\0aq).

+ strchr(): The strchr() function returns a pointer to the first occurrence of the character c in the string s.

+ memset(): The memset() function fills the first n bytes of the memory area pointed to by s with the constant byte c.

+ memmove(): The memmove() function copies n bytes from memory area src to memory area dest. The memory areas may overlap: copying takes place as though the bytes in src are first copied into a temporary array that does not overlap src or dest, and the bytes are then copied from the temporary array to dest.

See the mans to understand the arguments and the return value of each function.
