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
* The code may work on a variety of operating systems, but it was only
tested on Red Hat Enterprise Linux 6 and Ubuntu 14.04. The instructions
here should be suitable for most currently popular Unix derivatives.

* Python 2.6+

* Jellyfish 2.2+
http://www.genome.umd.edu/jellyfish.html
You will need the Jellyfish source code in order to install GUTSS. You will
also need to have Jellyfish itself installed and working.

* On Ubuntu: python-psutil

#######################
# Install from binary #
#######################

# decompress files
$ tar xzvf GUTSS-1.0.tar.gz

# create install directory if it doesn't already exist;
# choose another path if you wish
$ sudo mkdir -p /usr/local/bin

# install programs
$ sudo cp GUTSS-1.0/* /usr/local/bin

# make programs executable
$ sudo chmod 755 /usr/local/bin/GUTSS
$ sudo chmod 755 /usr/local/bin/query_per_sequence

#######################
# Install from source #
#######################

# decompress files
$ tar xzvf GUTSS-1.0.tar.gz

# borrow some Jellyfish code and patch it

cd /path/to/jellyfish/source/code

cd examples/query_per_sequence

cp /path/to/GUTSS-1.0/query_per_sequence.patch ./

patch -p0 <query_per_sequence.patch

# now compile the patched code...
# Jellyfish must be properly installed for the pkgconfig directory to exist.
# If you used a different installation directory for Jellyfish, you
# will need to adjust the path to the pkgconfig directory.
env PKG_CONFIG_PATH=/usr/local/lib/pkgconfig make

# The query_per_sequence program is the only one that needs to be compiled.
# The rest of the installation can proceed just like the binary install.

############
# Examples #
############

# compare the reads sampleA to the reads in sample B,
# assuming GUTSS is installed in /usr/local/bin, and
# that directory is in your PATH
$ GUTSS -a sampleA.fastq -b sampleB.fastq -o test.out -k 31

# a more complex example, which may be useful for Ubuntu
$ env LD_LIBRARY_PATH=$LD_LIBRARY_PATH:/usr/local/lib GUTSS -a sampleA.fq -b sampleB.fq -o test.out -k 31 -q /usr/local/bin/query_per_sequence -j /usr/local/bin/jellyfish

# Run the program without arguments to get all the possible options.

#################
# Output Format #
#################
The format for GUTSS output is tab delimited. The columns, in order, are:

(1) number of reads in sample A where sum(kA - kB) < 0
(2) number of reads in sample A where sum(kA - kB) = 0
(3) total number of reads in sample A
(4) number of reads in sample B where sum(kB - kA) < 0
(5) number of reads in sample B where sum(kB - kA) = 0
(6) total number of reads in sample B
(7) similarity score (%)

where kA = count for a single k-mer on that read in A
