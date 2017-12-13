## Short introduction to command line

This material includes short practical introduction to command line. We will practice skills which should be useful 
for the reminder of this workshop allowing you to automate your workflow.

### Getting sample data

Copy the sample data from the shared directory on the Virtual Machine that belongs to the GVL

```
cp -r /mnt/genomics/Workshop/sample-data .
```

### Exploring files

```
cat 
```

```
pawlik@r-knj783wz-0:~/sample-data$ wc -c *.fastq
```

```
pawlik@r-knj783wz-0:~/sample-data$ wc -c *.fastq | head -n -1 | sort -n > file_size.txt
```

Count the number of occurrences of a string:
```
grep -c 'ignore this line' test-small.fastq 
```


```
grep -ci 'ignore this line' *.fastq
```

Output:

```
sample_1.fastq:0
sample_2.fastq:0
sample_3.fastq:0
sample_4.fastq:0
sample_5.fastq:0
sample_6.fastq:0
test-high-gc-1.fastq:3000
test-high-gc-2.fastq:3000
test-moderate-gc-1.fastq:3000
test-moderate-gc-2.fastq:3000
test-small.fastq:3
```

This takes a while so it may make sense to save the output in the file
```
grep -ci 'ignore this line' *.fastq > count.txt
```

How to sort?

```
sort -t ':' -k2 -n count.txt
```

Using `cut`:

```
grep -ci 'ignore this line' *.fastq | cut -f 2 -d ':'
```


[Few more notes on grep](https://help.ubuntu.com/community/grep)

## References
* [Hands-on self-study shell course](http://swcarpentry.github.io/shell-novice)
* [Useful commands](https://github.com/joseah/command-line-for-bioinformatics/blob/master/commands.md)
* [More useful commands](https://github.com/joseah/command-line-for-bioinformatics)
* [Some more advanced commands](http://williamslab.bscb.cornell.edu/?page_id=235)

