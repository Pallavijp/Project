#!/bin/bash
echo "Enter the name to check"
read name
if [ -f $name ]
then
echo "$name is a file. content in the file:"
cat "$name" | wc -w
elif [ -d $name ]
then
echo "$name is a directory. files presdent:"
ls "$name"
else
echo "the given name is neither file nor a directory"
fi
