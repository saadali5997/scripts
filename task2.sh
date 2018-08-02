#!/bin/bash
echo "Creating task2 folder and creating 3 files in it"
$(mkdir task2 && cd task2 && touch file1 && touch file2 && touch file3)
echo "Creating task2_temp folder copying content of task2 in it"
$(mkdir task2_temp && cp -a task2/. task2_temp/)

ds=($(ls -d */))
f1=${ds[0]:0:${#ds[0]}-1}
f2=${ds[1]:0:${#ds[1]}-1}

echo "Swapping the names of those folders"
$(mv $f1 tempo)
$(mv $f2 $f1)
$(mv tempo $f2)

