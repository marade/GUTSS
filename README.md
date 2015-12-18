# GUTSS
General Utility for Tracking Sequence Similarity

This software was published to accompany the study:

An alignment free sequence comparison method for use in human intestinal microbiome and fecal microbiota transplantation analysis, by Brittnacher, et al, 2015

Please cite this paper if you use GUTSS for your project.

###########
# License #
###########
This software is licensed under GPL version 3.0.

http://www.gnu.org/licenses/gpl-3.0-standalone.html


################
# Requirements #
################
The code may work on a variety of operating systems, but it was only tested on Red Hat Enterprise Linux 6 and Ubuntu 14.04. The instructions here should be suitable for most currently popular Unix derivatives. You must have the following installed and working at a minimum to run GUTSS:

Python 2.6+

Python psutil (available as python-psutil in some distributions)

Jellyfish 2.2+
http://www.genome.umd.edu/jellyfish.html

You can install GUTSS from binary or source. If you want to install from source you will need the Jellyfish source code. For both types of GUTSS install you need to have the Jellyfish program installed and working first, so follow the instructions in the Jellyfish manual and be sure to test it.

#######################
# Install from binary #
#######################

Create install directory if it doesn't already exist; choose another path if you wish:
```
$ sudo mkdir -p /usr/local/bin
```

Install GUTSS and query_per_sequence to install directory:
```
$ sudo cp GUTSS query_per_sequence /usr/local/bin
```

Make programs executable:
```
$ sudo chmod 755 /usr/local/bin/GUTSS
$ sudo chmod 755 /usr/local/bin/query_per_sequence
```

If you have trouble with the binary distribution, please try installing from source.

#######################
# Install from source #
#######################

Here we use code from the Jellyfish distribution and apply a small patch to make it useful for our purposes:
```
$ cd /path/to/jellyfish/source/code
$ cd examples/query_per_sequence
$ cp /path/to/GUTSS-master/query_per_sequence.patch ./
$ patch -p0 <query_per_sequence.patch
```

Now compile the patched Jellyfish code using the make command and the proper PKG_CONFIG_PATH environment variable. Since you followed the requirements and the Jellyfish program is properly installed, it will have a pkgconfig subdirectory. You may need to adjust the path to this directory, depending on where you installed the Jellyfish program:
```
$ env PKG_CONFIG_PATH=/usr/local/lib/pkgconfig make
```

The query_per_sequence program is the only one that needs to be compiled. The rest of the installation can proceed much like the binary install.

###################################
# Ubuntu Install and Test Example #
###################################
```

# here we first install Jellyfish from source,
# and then the GUTSS binaries

# install python-psutil and tools needed to compile Jellyfish
user@host:~$ sudo apt-get install git linux-headers-generic build-essential python
…

# we assume you downloaded the compressed Jellyfish
# source to the Downloads folder in your home directory.

# decompress Jellyfish source
user@host:~$ cd ~/Downloads
user@host:~/Downloads$ tar -xzvf jellyfish-2.2.4.tar.gz
…

# compile Jellyfish
$ cd jellyfish-2.2.4
$ ./configure
…
user@host:~/Downloads/jellyfish-2.2.4$ make
…
make[1]: Leaving directory `/home/user/Downloads/jellyfish-2.2.4'

# install Jellyfish
user@host:~/Downloads/jellyfish-2.2.4$ sudo make install
…
make[1]: Leaving directory `/home/user/Downloads/jellyfish-2.2.4'

# decompress GUTSS
user@host:~/Downloads/jellyfish-2.2.4$ cd ../

# we assume you downloaded the compressed GUTSS master
# branch to the Downloads folder in your home directory

user@host:~/Downloads$ unzip GUTSS-master.zip 
Archive:  GUTSS-master.zip
fb47ebe4ba8f46af4665d078dceb48ff296cfc6b
   creating: GUTSS-master/
  inflating: GUTSS-master/GUTSS      
  inflating: GUTSS-master/LICENSE    
  inflating: GUTSS-master/README.md  
  inflating: GUTSS-master/query_per_sequence  
  inflating: GUTSS-master/query_per_sequence.patch  
   creating: GUTSS-master/test/
 extracting: GUTSS-master/test/sim49a_1M.fq.gz  
 extracting: GUTSS-master/test/sim49b_1M.fq.gz  
user@host:~/Downloads$ cd GUTSS-master/

# create directory if necessary
user@host:~/Downloads/GUTSS-master$ sudo mkdir -p /usr/local/bin

# install binaries
user@host:~/Downloads/GUTSS-master$ sudo cp GUTSS query_per_sequence /usr/local/bin

# make binaries executable
user@host:~/Downloads/GUTSS-master$ sudo chmod 755 /usr/local/bin/GUTSS
user@host:~/Downloads/GUTSS-master$ sudo chmod 755 /usr/local/bin/query_per_sequence

# test run; displays usage without options
user@host:~/Downloads/GUTSS-master$ GUTSS 
Usage: 
/usr/local/bin/GUTSS --afastq </path/to/file> --bfastq </path/to/file>  --outfile </path/to/file> \
--kmer <int> [ --apair </path/to/file> --bpair </path/to/file> --jellyfish </path/to/file> --cat \
</path/to/file> --qps </path/to/file> --tempdir </path/to/dir> --cores <int>]

Calculate similarity for two sets of Fastq reads

Options:
  --version             show program's version number and exit
  -h, --help            show this help message and exit
  -a AFASTQ, --afastq=AFASTQ
                        specifies the path to the 'A' Fastq file
  -p APAIR, --apair=APAIR
                        specifies the path to the read two 'A' Fastq file. You
                        can use this for paired end runs, or just cat the
                        files together.
  -b BFASTQ, --bfastq=BFASTQ
                        specifies the path to the 'B' Fastq file
  -r BPAIR, --bpair=BPAIR
                        specifies the path to the read two 'B' Fastq file. You
                        can use this for paired end runs, or just cat the
                        files together.
  -o OUTFILE, --outfile=OUTFILE
                        specifies the path to the output file. the output file
                        format is tab delimited, and the columns, in order,
                        are: (1) number of reads in sample A where sum(kA -
                        kB) < 0; (2) number of reads in sample A where sum(kA
                        - kB) = 0; (3) total number of reads in sample A; (4)
                        number of reads in sample B where sum(kB - kA) < 0;
                        (5) number of reads in sample B where sum(kB - kA) =
                        0; (6) total number of reads in sample B; and (7)
                        similarity score (%), where kA = count for a single
                        k-mer on that read in A.
  -k KMER, --kmer=KMER  specifies the K-mer value to use for the run.
  -j JELLYFISH, --jellyfish=JELLYFISH
                        specifies the path to the Jellyfish program. The
                        default is /usr/local/jellyfish/bin/jellyfish.
  -c CAT, --cat=CAT     specifies the path to the 'cat' program. The default
                        is /bin/cat.
  -q QPS, --qps=QPS     specifies the path to the query_per_sequence program.
                        The default is
                        /usr/local/jellyfish/bin/query_per_sequence.
  -t TEMPDIR, --tempdir=TEMPDIR
                        specifies the path to the temporary directory. The
                        default is /dev/shm, which is recommended if your
                        system implements tmpfs, as most recent Linux
                        distributuions do.
  -n CORES, --cores=CORES
                        specifies the number of CPU cores to use. By default
                        this is automatically determined by the program.

ERROR: Required flag -a/--afastq was not supplied. There may be other required flags too.

# unzip test data
user@host:~/Downloads/GUTSS-master$ gunzip test/*.gz

# default install on Ubuntu needs /usr/local/lib
# added to LD_LIBRARY_PATH environment variable

# run with test data
# compare the reads in sampleA to the reads in sample B
user@host:~/Downloads/GUTSS-master$ env LD_LIBRARY_PATH=$LD_LIBRARY_PATH:/usr/local/lib GUTSS \
-a test/sim49a_1M.fq -b test/sim49b_1M.fq -o test.out -k 31 -j /usr/local/bin/jellyfish \
-q /usr/local/bin/query_per_sequence 
[INFO] (MainThread) Free memory: 3G
[INFO] (MainThread) Hashing /home/user/Downloads/GUTSS-master/test/sim49a_1M.fq with 2 CPU cores...
[INFO] (MainThread) Creating K-mer hash: /dev/shm/tmpriyqJY
[INFO] (MainThread) Approximate elapsed time: 0.3 minutes
[INFO] (MainThread) Free memory: 3G
[INFO] (MainThread) Hashing /home/user/Downloads/GUTSS-master/test/sim49b_1M.fq with 2 CPU cores...
[INFO] (MainThread) Creating K-mer hash: /dev/shm/tmpTAVlV7
[INFO] (MainThread) Approximate elapsed time: 0.5 minutes
[INFO] (MainThread) Free memory: 3G
[INFO] (MainThread) Writing hash count: /dev/shm/tmpriyqJY /dev/shm/tmpTAVlV7
[INFO] (mem-watch-thread) Monitoring memory...
[INFO] (AvA-thread) Starting...
[INFO] (AvB-thread) Starting...
[INFO] (BvB-thread) Starting...
[INFO] (mem-watch-thread) Shared Memory Used: 29.31%
[INFO] (BvA-thread) Starting...
[INFO] (mem-watch-thread) Shared Memory Used: 31.13%
[INFO] (mem-watch-thread) Shared Memory Used: 32.88%
[INFO] (mem-watch-thread) Shared Memory Used: 35.04%
[INFO] (mem-watch-thread) Shared Memory Used: 36.40%
[INFO] (mem-watch-thread) Shared Memory Used: 38.56%
[INFO] (mem-watch-thread) Shared Memory Used: 39.91%
[INFO] (mem-watch-thread) Shared Memory Used: 42.05%
[INFO] (mem-watch-thread) Shared Memory Used: 43.39%
[INFO] (mem-watch-thread) Shared Memory Used: 45.54%
[INFO] (mem-watch-thread) Shared Memory Used: 46.89%
[INFO] (mem-watch-thread) Shared Memory Used: 48.63%
[INFO] (BvA-thread) ...Exiting
[INFO] (BvB-thread) ...Exiting
[INFO] (mem-watch-thread) Shared Memory Used: 50.40%
[INFO] (mem-watch-thread) Shared Memory Used: 52.19%
[INFO] (mem-watch-thread) Shared Memory Used: 53.97%
[INFO] (mem-watch-thread) Shared Memory Used: 55.76%
[INFO] (mem-watch-thread) Shared Memory Used: 57.56%
[INFO] (AvA-thread) ...Exiting
[INFO] (AvB-thread) ...Exiting
[INFO] (mem-watch-thread) ...done
[INFO] (MainThread) Free memory: 3G
[INFO] (MainThread) Deleting /dev/shm/tmpriyqJY...
[INFO] (MainThread) Deleting /dev/shm/tmpTAVlV7...
[INFO] (MainThread) Free memory: 3G
[INFO] (MainThread) Approximate elapsed time: 3.4 minutes
[INFO] (MainThread) Loading A read counts...
[INFO] (MainThread) Free memory: 2G
[INFO] (MainThread) Calculating A read counts...
[INFO] (MainThread) (1000000, 'reads processed...')
[INFO] (MainThread) Deleting /dev/shm/tmpyOVDYS...
[INFO] (MainThread) Deleting /dev/shm/tmpdTYJ1A...
[INFO] (MainThread) Free memory: 2G
[INFO] (MainThread) Approximate elapsed time: 5.4 minutes
[INFO] (MainThread) Loading B read counts...
[INFO] (MainThread) Free memory: 2G
[INFO] (MainThread) Calculating B read counts...
[INFO] (MainThread) Deleting /dev/shm/tmpXqQuAC...
[INFO] (MainThread) Deleting /dev/shm/tmpTQV1Zu...
[INFO] (MainThread) Free memory: 2G
[INFO] (MainThread) Approximate elapsed time: 6.6 minutes
[INFO] (MainThread) Calculating similarity score...
[INFO] (MainThread) Approximate elapsed time: 6.6 minutes
[INFO] (MainThread) Terminating...

# view results
user@host:~/Downloads/GUTSS-master$ cat test.out
...
```

#################
# Output Format #
#################
The format for GUTSS output is tab delimited. The columns, in order, are:

```
(1) number of reads in sample A where sum(kA - kB) < 0
(2) number of reads in sample A where sum(kA - kB) = 0
(3) total number of reads in sample A
(4) number of reads in sample B where sum(kB - kA) < 0
(5) number of reads in sample B where sum(kB - kA) = 0
(6) total number of reads in sample B
(7) similarity score (%)
```

where kA = count for a single k-mer on that read in A
