   83  grep CDS results.tab | wc -l
   84  wc -l /home/seq-data/MiSeq-analysis/MS2737619-300V2/19606/GATK/results.tab 
   85  cd ../
   86  rm -rf GATK/
   87  ls
   88  rm -rf Didier/
   89  rm MS2608841-600V3_1_*
   90  sudo umount /home/seq-data/MiSeq-analysis
   91  sudo /bin/mount -o rw,log-level=WARNING,log-file=/var/log/gluster.log -t glusterfs storage-01-10g:/MiSeqAnalysis03 /home/seq-data/MiSeq-analysis
   92  rm /home/seq-data/MiSeq-analysis/MS2737619-300V2/19606/GATK/dAbATCC19606.fna
   93  mv dAbATCC19606.* /home/seq-data/MiSeq-analysis/MS2737619-300V2/19606/GATK/
   94  ls
   95  ls /home/seq-data/MiSeq-analysis/MS2737619-300V2/19606/GATK/res*
   96  /usr/local/NWRCE-Tools/ProcessTab2Excel -i /home/seq-data/MiSeq-analysis/MS2737619-300V2/19606/GATK/results.tab -o results.xlsx
   97  mv results.xlsx /home/seq-data/MiSeq-analysis/MS2737619-300V2/19606/GATK/
   98  ls /home/seq-data/MiSeq-analysis/MS2737619-300V2/19606/GATK/res*
   99  sudo umount /home/seq-data/MiSeq-analysis
  100  sudo mount /home/seq-data/MiSeq-analysis
  101  ls
  102  rm p.txt 
  103  rm pairs.txt 
  104  cp /home/seq-data/MiSeq-analysis/multi-sample/French-Acinetobacter/kSNPv3/fastainput ./
  105  gzip fastainput 
  106  ls
  107  sudo umount /home/seq-data/MiSeq-analysis
  108  sudo /bin/mount -o rw,log-level=WARNING,log-file=/var/log/gluster.log -t glusterfs storage-01-10g:/MiSeqAnalysis03 /home/seq-data/MiSeq-analysis
  109  cp fastainput.gz /home/seq-data/MiSeq-analysis/multi-sample/French-Acinetobacter/kSNPv3/
  110  rm /home/seq-data/MiSeq-analysis/multi-sample/French-Acinetobacter/kSNPv3/fastainput
  111  sudo umount /home/seq-data/MiSeq-analysis
  112  gunzip fastainput.gz 
  113  man split
  114  split -l 2 fastainput 
  115  ls
  116  mkdir in
  117  mv x* in
  118  ls
  119  cat MS2737619-300V2_1_1_GGACTCCT_TAGATCGC.fastq MS2737619-300V2_1_2_GGACTCCT_TAGATCGC.fastq > ARS462.fastq
  120  rm MS2737619-300V2_1_*
  121  ls
  122  for y in *.fastq; do /usr/local/genometools/bin/gt convertseq -o `basename ${y} .fastq`.fa ${y}; done
  123  ls
  124  rm ARS462.fastq 
  125  ~/kSNP_Linux_package/kSNP/merge_fasta_reads ARS462.fa > ARS462.merged.fa
  126  wc -l ARS462.merged.fa 
  127  mv ARS462.merged.fa 
  128  mv ARS462.merged.fa in
  129  cd in/
  130  ls
  131  vi ARS462.merged.fa 
  132  ls
  133  for x in ./*; do cat ${x} >> ../all.fa; done
  134  cd ../
  135  w
  136  df -h
  137  df -h -l
  138  cp /home/seq-data/MiSeq-analysis/multi-sample/French-Acinetobacter/kSNPv3/finished_genomes ./
  139  cp /home/seq-data/MiSeq-analysis/multi-sample/French-Acinetobacter/kSNPv3/unassembled_genomes ./
  140  cat unassembled_genomes 
  141  vi unassembled_genomes 
  142  env PATH=$PATH:/home/marad/kSNP_Linux_package/kSNP /home/marad/kSNP_Linux_package/kSNP/kSNP -f all.fa -p finished_genomes -d Run1 -n 43 -u unassembled_genomes -k 31 | tee kSNP-log.txt
  143  ls
  144  rm -rf Run1/
  145  cd ../
  146  scp -r MS2737619-300V2 data-13:
  147  exit
  148  screen -r
  149  df -h -k
  150  df -h -l
  151  rm -rf MS2737619-300V2/
  152  exit
  153  ls
  154  ls metaphlan2-8fe1974cfa2b/
  155  exit
  156  scp -r -c arcfour metaphlan2-8fe1974cfa2b data-25:
  157  exit
  158  rpm -qa | grep biom
  159  exit
  160  scp /home/seq-data/MiSeq-analysis/multi-sample/Harwood-Acinetobacter/BWA/stats-AB5075-UW.xlsx h140-marad:Desktop
  161  exit
  162  find /home/seq-data/fastq -type f | wc -l
  163  df -h 
  164  exit
  165  rpm -qa | grep gcc
  166  unzip snap-master.zip 
  167  mv snap-master snap-1.0b.16
  168  ls
  169  rn snap-master.zip 
  170  rm snap-master.zip 
  171  tar czvf snap-1.0b.16.tar.gz snap-1.0b.16
  172  ls
  173  cd snap-1.0b.16/
  174  ls
  175  env CC=/opt/centos/devtoolset-1.1/root/usr/bin/gcc CPP=/opt/centos/devtoolset-1.1/root/usr/bin/cpp CXX=/opt/centos/devtoolset-1.1/root/usr/bin/c++ make
  176  ls
  177  ls -la snap
  178  ./snap 
  179  ./snap single
  180  ls
  181  ls -la
  182  vi Makefile
  183  exit
  184  ls
  185  /usr/bin/rpmdev-setuptree
  186  mv snap-1.0b.16.tar.gz rpmbuild/SOURCES/
  187  cd rpmbuild/SPECS/
  188  vi snap.spec
  189  ls ~/snap-1.0b.16/
  190  vi snap.spec
  191  rpmbuild -ba snap.spec 
  192  rm /home/marad/rpmbuild/RPMS/x86_64/snap-debuginfo-1.0b.16-1.x86_64.rpm
  193  cd
  194  rm -rf rpmbuild/
  195  exit
  196  df -h -l
  197  w
  198  exit
  199  df -h -l
  200  sudo ls -la /data1
  201  sudo ls -la /data2
  202  sudo mkdir /data2/eliweiss
  203  sudo mkdir /data1/eliweiss
  204  sudo cvhown eliweiss:eliweiss /data1/eliweiss
  205  sudo chown eliweiss:eliweiss /data1/eliweiss
  206  sudo chown eliweiss:eliweiss /data2/eliweiss
  207  exit
  208  sudo yum install snap
  209  rpm -ql snap
  210  /usr/local/snap/snap
  211  /usr/local/snap/snap index
  212  snap single
  213  /usr/local/snap/snap single
  214  rpm -qi snap
  215  /usr/local/snap/snap index
  216  cp /usr/local/NWRCE-Tools/RunBWA /home/nwrce-data/shared/marad/beta/
  217  mv /home/nwrce-data/shared/marad/beta/RunBWA /home/nwrce-data/shared/marad/beta/RunSnapBac
  218  vi /home/nwrce-data/shared/marad/beta/RunSnapBac
  219  /usr/local/snap/snap single
  220  vi valtest.py
  221  chmod 755 valtest.py 
  222  ./valtest.py 
  223  vi valtest.py
  224  ./valtest.py 
  225  vi valtest.py
  226  ./valtest.py 
  227  vi valtest.py
  228  ./valtest.py 
  229  vi valtest.py
  230  ./valtest.py 
  231  vi valtest.py
  232  ./valtest.py 
  233  cat valtest.py 
  234  vi /home/nwrce-data/shared/marad/beta/RunSnapBac
  235  grep -r glob /usr/local/NWRCE-Tools/
  236  vi /home/nwrce-data/shared/marad/beta/RunSnapBac
  237  grep -r re, /usr/local/NWRCE-Tools/
  238  vi /usr/local/NWRCE-Tools/ProcessBAMVariants
  239  vi /home/nwrce-data/shared/marad/beta/RunSnapBac
  240  vi /home/nwrce-data/shared/marad/ContrastReads/ContrastReadsThreadingZ
  241  vi /home/nwrce-data/shared/marad/beta/RunSnapBac
  242  /usr/local/snap/snap single
  243  vi /home/nwrce-data/shared/marad/beta/RunSnapBac
  244  exit
  245  vi /home/nwrce-data/shared/marad/beta/RunSnapBac
  246  /usr/local/snap/snap single
  247  vi /home/nwrce-data/shared/marad/beta/RunSnapBac
  248  vi /usr/local/NWRCE-Tools/RunBWA
  249  vi /home/nwrce-data/shared/marad/beta/RunSnapBac
  250  /home/nwrce-data/shared/marad/beta/RunSnapBac
  251  vi /home/nwrce-data/shared/marad/beta/RunSnapBac
  252  /home/nwrce-data/shared/marad/beta/RunSnapBac
  253  vi /home/nwrce-data/shared/marad/beta/RunSnapBac
  254  /home/nwrce-data/shared/marad/beta/RunSnapBac
  255  vi /home/nwrce-data/shared/marad/beta/RunSnapBac
  256  /home/nwrce-data/shared/marad/beta/RunSnapBac
  257  vi /home/nwrce-data/shared/marad/beta/RunSnapBac
  258  /home/nwrce-data/shared/marad/beta/RunSnapBac
  259  vi /home/nwrce-data/shared/marad/beta/RunSnapBac
  260  /home/nwrce-data/shared/marad/beta/RunSnapBac
  261  vi /home/nwrce-data/shared/marad/beta/RunSnapBac
  262  /home/nwrce-data/shared/marad/beta/RunSnapBac
  263  vi /home/nwrce-data/shared/marad/beta/RunSnapBac
  264  /usr/local/snap/snap single
  265  vi /home/nwrce-data/shared/marad/beta/RunSnapBac
  266  ls
  267  /usr/bin/rpmdev-setuptree
  268  vi /home/nwrce-data/shared/marad/beta/RunSnapBac
  269  unzip snapr-master.zip 
  270  rm snapr-master.zip 
  271  vi docs
  272  rpm -q snap
  273  mv snapr-master/ snapr-1.0
  274  tar czvf snapr-1.0.tar.gz snapr
  275  tar czvf snapr-1.0.tar.gz snapr-1.0
  276  rm -rf snapr-1.0/
  277  mv snapr-1.0.tar.gz rpmbuild/SOURCES/
  278  cd rpmbuild/SPECS/
  279  vi snapr.spec
  280  rpmbuild -ba snapr.spec 
  281  rm /home/marad/rpmbuild/RPMS/x86_64/snapr-debuginfo-1.0-1.x86_64.rpm
  282  cd
  283  rm -rf rpmbuild/
  284  exit
  285  vi /usr/local/NWRCE-Tools/RunBWA
  286  vi /home/nwrce-data/shared/marad/beta/RunSnapBac
  287  cp /home/nwrce-data/shared/marad/beta/RunSnapBac /home/nwrce-data/shared/marad/beta/RunSnaprBac
  288  vi /home/nwrce-data/shared/marad/beta/RunSnaprBac
  289  ls -la /home/ref-data/genbank/Escherichia_coli_K_12_substr__MG1655_uid225/
  290  exit
  291  head -n 1 Krista/out/U00096.fna
  292  exit
  293  wget ftp://ftp.ensembl.org/pub/current_gtf/ailuropoda_melanoleuca/Ailuropoda_melanoleuca.ailMel1.78.gtf.gz
  294  gunzip Ailuropoda_melanoleuca.ailMel1.78.gtf.gz 
  295  head Ailuropoda_melanoleuca.ailMel1.78.gtf 
  296  rm Ailuropoda_melanoleuca.ailMel1.78.gtf 
  297  cd ../
  298  exit
  299  /home/ref-data/script/genome-partial-update 
  300  vi /home/ref-data/script/genome-partial-update 
  301  vi /home/ref-data/script/genome-data-update 
  302  grep unlink /usr/local/NWRCE-Tools/*
  303  vi /home/ref-data/script/genome-data-update 
  304  vi /home/ref-data/script/genome-combined-update
  305  chmod 755 /home/ref-data/script/genome-combined-update
  306  vi /home/ref-data/script/genome-combined-update
  307  perl -c /home/ref-data/script/genome-combined-update
  308  vi /home/ref-data/script/genome-combined-update
  309  perl -c /home/ref-data/script/genome-combined-update
  310  vi /home/ref-data/script/genome-combined-update
  311  perl -c /home/ref-data/script/genome-combined-update
  312  vi /home/ref-data/script/genome-combined-update
  313  /home/ref-data/script/genome-combined-update
  314  vi /home/ref-data/script/genome-combined-update
  315  man find
  316  find /home/ref-data/genbank -maxdepth 1 -mindepth 1 -type d -empty
  317  find /home/ref-data/genbank -maxdepth 1 -mindepth 1 -type d > kkr
  318  vi kkr
  319  ls /home/ref-data/genbank/Amycolatopsis_mediterranei_S699_uid170006
  320  ls /home/ref-data/genbank/Amycolatopsis_mediterranei_S699_uid43503
  321  ls -la /home/ref-data/genbank/Amycolatopsis_mediterranei_S699_uid43503
  322  ls -la /home/ref-data/genbank/Amycolatopsis_mediterranei_S699_uid170006
  323  vi kkr
  324  ls /home/ref-data/genbank/Brucella_suis_1330_uid320
  325  ls /home/ref-data/genbank/Brucella_suis_1330_uid70695
  326  vi kkr
  327  rm kkr 
  328  exit
  329  screen
  330  htop
  331  ps uxww
  332  vi /home/nwrce-data/shared/marad/beta/RunSnaprBac
  333  screen -r
  334  cd Krista/
  335  rm -rf out/
  336  /home/nwrce-data/shared/marad/beta/RunSnaprBac -i in -o out -r Escherichia_coli_str_k_12_substr_mg1655.GCA_000005845.2.25.dna.chromosome.Chromosome.fa -g Escherichia_coli_str_k_12_substr_mg1655.GCA_000005845.2.25.gtf -n 43 -m 64
  337  head -n 1 /home/marad/Krista/out/Escherichia_coli_str_k_12_substr_mg1655.GCA_000005845.2.25.dna.chromosome.Chromosome.fa
  338  screen -r
  339  exit
  340  df -h | grep ref-
  341  mount | grep ref-
  342  sudo umount /home/ref-data
  343  sudo /bin/mount -o rw,log-level=WARNING,log-file=/var/log/gluster.log -t glusterfs storage-01-10g:/RefData03 /home/ref-data
  344  vi /home/ref-data/script/genome-partial-update 
  345  vi /home/ref-data/script/genome-data-update 
  346  /home/ref-data/script/genome-data-update 
  347  /usr/bin/lftp -c 'set net:socket-buffer 33554432; open -e "mirror --delete -v -P 2 -p -I *.faa -I *.ffn -I *.fna -I *.ptt -I *.gbk -I .gff -x CLUSTERS Bacteria /home/ref-data/genbank" ftp://ftp.ncbi.nlm.nih.gov/genbank/genomes'
  348  ls /home/ref-data/genbank
  349  ls /home/ref-data/genbank/Escherichia_coli_K_12_substr__MG1655_uid225/
  350  ls -la /home/ref-data/genbank/Escherichia_coli_K_12_substr__MG1655_uid225/
  351  /home/ref-data/script/genome-data-update 
  352  sudo umount /home/ref-data
  353  sudo mount /home/ref-data
  354  exit
  355  man lftp
  356  sudo yum install snapr
  357  /usr/local/snapr/snapr transciptome
  358  /usr/local/snapr/snapr transcriptome
  359  wget ftp://ftp.ncbi.nih.gov/genomes/Bacteria/Escherichia_coli_K_12_substr__MG1655_uid57779/NC_000913.gff
  360  mkdir Krista
  361  cd Krista/
  362  mv ../NC_000913.gff ./
  363  wget ftp://ftp.ncbi.nih.gov/genomes/Bacteria/Escherichia_coli_K_12_substr__MG1655_uid57779/NC_000913.fna
  364  cp /home/seq-data/MiSeq-fastq/MS2022651* ./
  365  ls
  366  mkdir in
  367  mv *.fastq in
  368  /home/nwrce-data/shared/marad/beta/RunSnaprBac
  369  rm NC*
  370  wget ftp://ftp.ncbi.nih.gov/genbank/genomes/Bacteria/Escherichia_coli_K_12_substr__MG1655_uid225/U00096.gff
  371  wget ftp://ftp.ncbi.nih.gov/genbank/genomes/Bacteria/Escherichia_coli_K_12_substr__MG1655_uid225/U00096.fna
  372  /home/nwrce-data/shared/marad/beta/RunSnaprBac
  373  /home/nwrce-data/shared/marad/beta/RunSnaprBac -i in -o out -r U00096.fna -g U00096.gff -n 43 -m 64
  374  vi /home/nwrce-data/shared/marad/beta/RunSnaprBac
  375  /usr/local/snapr/snapr transcriptome
  376  vi /home/nwrce-data/shared/marad/beta/RunSnaprBac
  377  /home/nwrce-data/shared/marad/beta/RunSnaprBac -i in -o out -r U00096.fna -g U00096.gff -n 43 -m 64
  378  head -n 1 U00096.fna 
  379  /usr/local/snapr/snapr transcriptome
  380  vi /home/nwrce-data/shared/marad/beta/RunSnaprBac
  381  rm -rf out/
  382  /home/nwrce-data/shared/marad/beta/RunSnaprBac -i in -o out -r U00096.fna -g U00096.gff -n 43 -m 64 -a
  383  vi /home/nwrce-data/shared/marad/beta/RunSnaprBac
  384  rm -rf out/
  385  /home/nwrce-data/shared/marad/beta/RunSnaprBac -i in -o out -r U00096.fna -g U00096.gff -n 43 -m 64 -a
  386  vi /home/nwrce-data/shared/marad/beta/RunSnaprBac
  387  vi /home/nwrce-data/shared/marad/beta/RunSnapBac
  388  rm -rf out/
  389  /home/nwrce-data/shared/marad/beta/RunSnaprBac -i in -o out -r U00096.fna -g U00096.gff -n 43 -m 64 -a
  390  vi /home/nwrce-data/shared/marad/beta/RunSnapBac
  391  vi /home/nwrce-data/shared/marad/beta/RunSnaprBac
  392  rm -rf out/
  393  /home/nwrce-data/shared/marad/beta/RunSnaprBac -i in -o out -r U00096.fna -g U00096.gff -n 43 -m 64 -a
  394  ls out/
  395  rm -rf out/
  396  /home/nwrce-data/shared/marad/beta/RunSnaprBac -i in -o out -r U00096.fna -g U00096.gff -n 43 -m 64 -a
  397  ls
  398  vi U00096.gff 
  399  rpm -q cufflinks
  400  sudo yum install cufflinks
  401  gffread U00096.gff -T -o U00096.gtf
  402  rm -rf out/
  403  /home/nwrce-data/shared/marad/beta/RunSnaprBac -i in -o out -r U00096.fna -g U00096.gtf -n 43 -m 64 -a
  404  head U00096.gff 
  405  head U00096.gtf
  406  vi U00096.gtf
  407  wget ftp://ftp.ensemblgenomes.org/pub/release-25/bacteria//gtf/bacteria_0_collection/escherichia_coli_str_k_12_substr_mg1655/Escherichia_coli_str_k_12_substr_mg1655.GCA_000005845.2.25.gtf.gz
  408  gunzip Escherichia_coli_str_k_12_substr_mg1655.GCA_000005845.2.25.gtf.gz 
  409  head Escherichia_coli_str_k_12_substr_mg1655.GCA_000005845.2.25.gtf 
  410  wget ftp://ftp.ensemblgenomes.org/pub/release-25/bacteria//fasta/bacteria_0_collection/escherichia_coli_str_k_12_substr_mg1655/dna/Escherichia_coli_str_k_12_substr_mg1655.GCA_000005845.2.25.dna.chromosome.Chromosome.fa.gz
  411  gunzip Escherichia_coli_str_k_12_substr_mg1655.GCA_000005845.2.25.dna.chromosome.Chromosome.fa.gz 
  412  head Escherichia_coli_str_k_12_substr_mg1655.GCA_000005845.2.25.dna.chromosome.Chromosome.fa 
  413  rm -rf out/
  414  /home/nwrce-data/shared/marad/beta/RunSnaprBac -i in -o out -r Escherichia_coli_str_k_12_substr_mg1655.GCA_000005845.2.25.dna.chromosome.Chromosome.fa -g Escherichia_coli_str_k_12_substr_mg1655.GCA_000005845.2.25.gtf -n 43 -m 64
  415  rm -rf out/
  416  /usr/local/snapr/snapr transcriptome
  417  vi /home/nwrce-data/shared/marad/beta/RunSnaprBac
  418  rm -rf out/
  419  /home/nwrce-data/shared/marad/beta/RunSnaprBac -i in -o out -r Escherichia_coli_str_k_12_substr_mg1655.GCA_000005845.2.25.dna.chromosome.Chromosome.fa -g Escherichia_coli_str_k_12_substr_mg1655.GCA_000005845.2.25.gtf -n 43 -m 64
  420  vi /home/nwrce-data/shared/marad/beta/RunSnaprBac
  421  rm -rf out/
  422  /home/nwrce-data/shared/marad/beta/RunSnaprBac -i in -o out -r Escherichia_coli_str_k_12_substr_mg1655.GCA_000005845.2.25.dna.chromosome.Chromosome.fa -g Escherichia_coli_str_k_12_substr_mg1655.GCA_000005845.2.25.gtf -n 43 -m 64
  423  rm -rf out/
  424  vi /home/nwrce-data/shared/marad/beta/RunSnaprBac
  425  rm -rf out/
  426  /home/nwrce-data/shared/marad/beta/RunSnaprBac -i in -o out -r Escherichia_coli_str_k_12_substr_mg1655.GCA_000005845.2.25.dna.chromosome.Chromosome.fa -g Escherichia_coli_str_k_12_substr_mg1655.GCA_000005845.2.25.gtf -n 43 -m 64
  427  vi /home/nwrce-data/shared/marad/beta/RunSnaprBac
  428  rm -rf out/
  429  /home/nwrce-data/shared/marad/beta/RunSnaprBac -i in -o out -r Escherichia_coli_str_k_12_substr_mg1655.GCA_000005845.2.25.dna.chromosome.Chromosome.fa -g Escherichia_coli_str_k_12_substr_mg1655.GCA_000005845.2.25.gtf -n 43 -m 64
  430  /usr/local/snapr/snapr single
  431  vi /home/nwrce-data/shared/marad/beta/RunSnaprBac
  432  /usr/local/snapr/snapr single
  433  rm -rf out/
  434  /home/nwrce-data/shared/marad/beta/RunSnaprBac -i in -o out -r Escherichia_coli_str_k_12_substr_mg1655.GCA_000005845.2.25.dna.chromosome.Chromosome.fa -g Escherichia_coli_str_k_12_substr_mg1655.GCA_000005845.2.25.gtf -n 43 -m 64
  435  vi /home/nwrce-data/shared/marad/beta/RunSnaprBac
  436  rm -rf out/
  437  /home/nwrce-data/shared/marad/beta/RunSnaprBac -i in -o out -r Escherichia_coli_str_k_12_substr_mg1655.GCA_000005845.2.25.dna.chromosome.Chromosome.fa -g Escherichia_coli_str_k_12_substr_mg1655.GCA_000005845.2.25.gtf -n 43 -m 64
  438  ls
  439  /usr/local/snapr/snapr transcriptome
  440  ls
  441  rm transcriptome.fa 
  442  ls out/
  443  rm -rf out/
  444  mkdir out
  445  /usr/local/snapr/snapr index /home/marad/Krista/out/Escherichia_coli_str_k_12_substr_mg1655.GCA_000005845.2.25.dna.chromosome.Chromosome.fa /home/marad/Krista/out -t43 -bSpace
  446  rm -rf out/; mkdir out; cp Escherichia_coli_str_k_12_substr_mg1655.GCA_000005845.2.25.* out/
  447  /usr/local/snapr/snapr index /home/marad/Krista/out/Escherichia_coli_str_k_12_substr_mg1655.GCA_000005845.2.25.dna.chromosome.Chromosome.fa /home/marad/Krista/out -t43 -bSpace
  448  /usr/local/snapr/snapr transcriptome /home/marad/Krista/out/Escherichia_coli_str_k_12_substr_mg1655.GCA_000005845.2.25.gtf /home/marad/Krista/out/Escherichia_coli_str_k_12_substr_mg1655.GCA_000005845.2.25.dna.chromosome.Chromosome.fa /home/marad/Krista/out -bSpace -t43 -O1000
  449  mv transcriptome.fa out/
  450  /usr/local/snapr/snapr single /home/marad/Krista/out /home/marad/Krista/out /home/marad/Krista/out/Escherichia_coli_str_k_12_substr_mg1655.GCA_000005845.2.25.gtf /home/marad/Krista/in/MS2022651-50V2_1_1_TGACCA.fastq -t 43 -so -sm 64 -M -o /home/marad/Krista/out/MS2022651-50V2_1_1_TGACCA_v_Escherichia_coli_str_k_12_substr_mg1655.GCA_000005845.2.25.dna.chromosome.Chromosome.sorted.bam -hp -R ID:MS2022651-50V2_1_1_TGACCA\tPL:ILLUMINA\tPG:Snap\tLB:library\tSM:sample_name\tPU:platform
  451  rm out/MS2022651-50V2_1_1_TGACCA_v_Escherichia_coli_str_k_12_substr_mg1655.GCA_000005845.2.25.dna.chromosome.Chromosome.sorted.bam.tmp 
  452  strace -s256 -otrace.txt -f /usr/local/snapr/snapr single /home/marad/Krista/out /home/marad/Krista/out /home/marad/Krista/out/Escherichia_coli_str_k_12_substr_mg1655.GCA_000005845.2.25.gtf /home/marad/Krista/in/MS2022651-50V2_1_1_TGACCA.fastq -t 43 -so -sm 64 -M -o /home/marad/Krista/out/MS2022651-50V2_1_1_TGACCA_v_Escherichia_coli_str_k_12_substr_mg1655.GCA_000005845.2.25.dna.chromosome.Chromosome.sorted.bam -hp -R ID:MS2022651-50V2_1_1_TGACCA\tPL:ILLUMINA\tPG:Snap\tLB:library\tSM:sample_name\tPU:platform
  453  tail trace.txt 
  454  tail -n 100 trace.txt 
  455  vi trace.txt 
  456  strace -s256 -otrace.txt -f /usr/local/snapr/snapr single /home/marad/Krista/out /home/marad/Krista/out /home/marad/Krista/out/Escherichia_coli_str_k_12_substr_mg1655.GCA_000005845.2.25.gtf /home/marad/Krista/in/MS2022651-50V2_1_1_TGACCA.fastq -t 43 -so -sm 96 -M -o /home/marad/Krista/out/MS2022651-50V2_1_1_TGACCA_v_Escherichia_coli_str_k_12_substr_mg1655.GCA_000005845.2.25.dna.chromosome.Chromosome.sorted.bam -hp -R ID:MS2022651-50V2_1_1_TGACCA\tPL:ILLUMINA\tPG:Snap\tLB:library\tSM:sample_name\tPU:platform
  457  vi trace.txt 
  458  rm -rf out/
  459  rm -rf out/; mkdir out; cp Escherichia_coli_str_k_12_substr_mg1655.GCA_000005845.2.25.* out/
  460  /usr/local/snapr/snapr index /home/marad/Krista/out/Escherichia_coli_str_k_12_substr_mg1655.GCA_000005845.2.25.dna.chromosome.Chromosome.fa /home/marad/Krista/out -t43 -bSpace
  461  /usr/local/snapr/snapr transcriptome /home/marad/Krista/out/Escherichia_coli_str_k_12_substr_mg1655.GCA_000005845.2.25.gtf /home/marad/Krista/out/Escherichia_coli_str_k_12_substr_mg1655.GCA_000005845.2.25.dna.chromosome.Chromosome.fa /home/marad/Krista/out -bSpace -t43 -O1000
  462  mv transcriptome.fa out/
  463  strace -s256 -otrace.txt -f /usr/local/snapr/snapr single /home/marad/Krista/out /home/marad/Krista/out /home/marad/Krista/out/Escherichia_coli_str_k_12_substr_mg1655.GCA_000005845.2.25.gtf /home/marad/Krista/in/MS2022651-50V2_1_1_TGACCA.fastq -so -sm 128 -M -o /home/marad/Krista/out/MS2022651-50V2_1_1_TGACCA_v_Escherichia_coli_str_k_12_substr_mg1655.GCA_000005845.2.25.dna.chromosome.Chromosome.sorted.bam -hp
  464  rm -rf out/; mkdir out; cp Escherichia_coli_str_k_12_substr_mg1655.GCA_000005845.2.25.* out/
  465  mkdir trans
  466  /usr/local/snapr/snapr index /home/marad/Krista/out/Escherichia_coli_str_k_12_substr_mg1655.GCA_000005845.2.25.dna.chromosome.Chromosome.fa /home/marad/Krista/out -t43 -bSpace
  467  /usr/local/snapr/snapr transcriptome /home/marad/Krista/out/Escherichia_coli_str_k_12_substr_mg1655.GCA_000005845.2.25.gtf /home/marad/Krista/out/Escherichia_coli_str_k_12_substr_mg1655.GCA_000005845.2.25.dna.chromosome.Chromosome.fa /home/marad/Krista/trans -bSpace -t43 -O1000
  468  mv transcriptome.fa trans/
  469  strace -s256 -otrace.txt -f /usr/local/snapr/snapr single /home/marad/Krista/out /home/marad/Krista/trans /home/marad/Krista/out/Escherichia_coli_str_k_12_substr_mg1655.GCA_000005845.2.25.gtf /home/marad/Krista/in/MS2022651-50V2_1_1_TGACCA.fastq -so -sm 128 -M -o /home/marad/Krista/out/MS2022651-50V2_1_1_TGACCA_v_Escherichia_coli_str_k_12_substr_mg1655.GCA_000005845.2.25.dna.chromosome.Chromosome.sorted.bam -hp
  470  vi /home/nwrce-data/shared/marad/beta/RunSnaprBac
  471  rm -rf out/
  472  /home/nwrce-data/shared/marad/beta/RunSnaprBac -i in -o out -r Escherichia_coli_str_k_12_substr_mg1655.GCA_000005845.2.25.dna.chromosome.Chromosome.fa -g Escherichia_coli_str_k_12_substr_mg1655.GCA_000005845.2.25.gtf -n 43 -m 64
  473  rm -rf out/
  474  vi /home/nwrce-data/shared/marad/beta/RunSnaprBac
  475  /home/nwrce-data/shared/marad/beta/RunSnaprBac -i in -o out -r Escherichia_coli_str_k_12_substr_mg1655.GCA_000005845.2.25.dna.chromosome.Chromosome.fa -g Escherichia_coli_str_k_12_substr_mg1655.GCA_000005845.2.25.gtf -n 43 -m 64
  476  rm -rf out/
  477  vi /home/nwrce-data/shared/marad/beta/RunSnaprBac
  478  rm -rf out/
  479  /home/nwrce-data/shared/marad/beta/RunSnaprBac -i in -o out -r Escherichia_coli_str_k_12_substr_mg1655.GCA_000005845.2.25.dna.chromosome.Chromosome.fa -g Escherichia_coli_str_k_12_substr_mg1655.GCA_000005845.2.25.gtf -n 43 -m 64
  480  cd out/
  481  ls
  482  vi MS2022651-50V2_1_1_CGATGT_v_Escherichia_coli_str_k_12_substr_mg1655.GCA_000005845.2.25.dna.chromosome.Chromosome.sorted.gene_name.counts.txt
  483  ls
  484  cat MS2022651-50V2_1_1_CGATGT_v_Escherichia_coli_str_k_12_substr_mg1655.GCA_000005845.2.25.dna.chromosome.Chromosome.sorted.fusions.reads.fa
  485  ls -la
  486  exit
  487  screen -r
  488  exit
  489  cd Krista/
  490  ls
  491  cd out/
  492  ls
  493  cat MS2022651-50V2_1_1_TGACCA_v_Escherichia_coli_str_k_12_substr_mg1655.GCA_000005845.2.25.dna.chromosome.Chromosome.sorted.gene_id.counts.txt
  494  ls
  495  cat MS2022651-50V2_1_1_TGACCA_v_Escherichia_coli_str_k_12_substr_mg1655.GCA_000005845.2.25.dna.chromosome.Chromosome.sorted.gene_name.counts.txt
  496  exit
  497  ssh wall-07
  498  exit
  499  w
  500  exit
  501  w
  502  df -h
  503  df -h -l
  504  cd /data1/marad/
  505  screen -r
  506  screen
  507  exit
  508  ls
  509  cd BWA/
  510  ls
  511  ls -lah
  512  ls -lah ../
  513  w
  514  sudo tail -f /var/log/everything
  515  exit
  516  screen -r
  517  htop
  518  ps uxww
  519  screen -r
  520  exit
  521  screen -r
  522  cat /data1/marad/positions.txt 
  523  exit
  524  vi positions.txt
  525  ls
  526  mv positions.txt BWA/
  527  sudo umount /home/seq-data/MiSeq-analysis
  528  sudo /bin/mount -o rw,log-level=WARNING,log-file=/var/log/gluster.log -t glusterfs storage-01-10g:/MiSeqAnalysis03 /home/seq-data/MiSeq-analysis
  529  mkdir /home/seq-data/MiSeq-analysis/multi-sample/Damman-UCFMT/MLST-find-multi-strain2/
  530  cp -a BWA/ /home/seq-data/MiSeq-analysis/multi-sample/Damman-UCFMT/MLST-find-multi-strain2/
  531  sudo umount /home/seq-data/MiSeq-analysis
  532  sudo mount /home/seq-data/MiSeq-analysis
  533  ls
  534  /usr/bin/blast
  535  /usr/bin/blastn
  536  /usr/bin/blastn --help
  537  /usr/bin/blastn -db nr -out outfile -outfmt 5 -num_threads 20 -evalue 0.001 -query stdin
  538  /usr/bin/blastn -help
  539  rm -rf *.fastq
  540  rm -rf BWA/
  541  ls
  542  rm pairs.txt 
  543  exit
  544  cp /home/seq-data/MiSeq-fastq/MS2009328-300V2_?.phiXfilt.HSfilt.fastq ./
  545  cp /home/seq-data/MiSeq-fastq/MS2004950-500V2_?.phiXfilt.HSfilt.fastq ./
  546  cp /home/seq-data/MiSeq-fastq/MS2008317-500V2_?.phiXfilt.HSfilt.fastq ./
  547  cp /home/seq-data/MiSeq-fastq/MS2013867-500V2_?.phiXfilt.HSfilt.fastq ./
  548  cp /home/seq-data/MiSeq-fastq/MS2012776-300V2_?.phiXfilt.HSfilt.fastq ./
  549  ls
  550  ls *.fastq > pairs.txt
  551  vi pairs.txt 
  552  p1=(`cut -f1 pairs.txt`); p2=(`cut -f2 pairs.txt`); for index in "${!p1[@]}"; do /home/nwrce-data/shared/marad/beta/RunBWA -a ${p1[$index]} -p ${p2[$index]} -o BWA -n 43 -m 64 -r /home/nwrce-data/shared/marad/MLST/coli_MLST_UCC_concat.fa; done
  553  cd BWA/
  554  ls
  555  ls -la *.bam
  556  samtools tview MS2004950-500V2_1.phiXfilt.HSfilt+MS2004950-500V2_2.phiXfilt.HSfilt_v_coli_MLST_UCC_concat.sorted.bam coli_MLST_UCC_concat.fa
  557  ls -la *.bam
  558  samtools tview MS2008317-500V2_1.phiXfilt.HSfilt+MS2008317-500V2_2.phiXfilt.HSfilt_v_coli_MLST_UCC_concat.sorted.bam coli_MLST_UCC_concat.fa
  559  ls -la *.bam
  560  samtools MS2009328-300V2_1.phiXfilt.HSfilt+MS2009328-300V2_2.phiXfilt.HSfilt_v_coli_MLST_UCC_concat.sorted.bam coli_MLST_UCC_concat.fa
  561  samtools tview MS2009328-300V2_1.phiXfilt.HSfilt+MS2009328-300V2_2.phiXfilt.HSfilt_v_coli_MLST_UCC_concat.sorted.bam coli_MLST_UCC_concat.fa
  562  ls -la *.bam
  563  samtools tview MS2012776-300V2_1.phiXfilt.HSfilt+MS2012776-300V2_2.phiXfilt.HSfilt_v_coli_MLST_UCC_concat.sorted.bam coli_MLST_UCC_concat.fa
  564  ls -la *.bam
  565  samtools tview MS2013867-500V2_1.phiXfilt.HSfilt+MS2013867-500V2_2.phiXfilt.HSfilt_v_coli_MLST_UCC_concat.sorted.bam coli_MLST_UCC_concat.fa
  566  exit
  567  screen -r
  568  exit
  569  cat /home/nwrce-data/marad/HMP-pipeline.txt 
  570  exit
  571  screen -r
  572  ls
  573  exit
  574  screen -r
  575  ls
  576  ls /data1/marad/
  577  ls /data2/marad/
  578  exit
  579  ls
  580  /usr/bin/rpmdev-setuptree
  581  rpm -q NWRCE-Tools
  582  rpm -Uvh http://soft-01/misc/SRPMS/NWRCE-Tools-4.3-59.src.rpm
  583  cd rpmbuild/SOURCES/
  584  tar xzvf NWRCE-Tools-4.3.tar.gz 
  585  rm NWRCE-Tools-4.3.tar.gz 
  586  cp /home/nwrce-data/shared/marad/beta/RunSna* NWRCE-Tools-4.3/
  587  cp /home/nwrce-data/shared/marad/beta/TrimFastqHomopolymers NWRCE-Tools-4.3/
  588  cp /home/nwrce-data/shared/marad/beta/FilterFastqBySeq NWRCE-Tools-4.3/
  589  diff -u /home/nwrce-data/shared/marad/beta/RunBWA NWRCE-Tools-4.3/RunBWA 
  590  diff -u NWRCE-Tools-4.3/RunBWA /home/nwrce-data/shared/marad/beta/RunBWA
  591  mv /home/nwrce-data/shared/marad/beta/RunBWA NWRCE-Tools-4.3/RunBWA 
  592  cp /home/nwrce-data/shared/marad/beta/RunBWA NWRCE-Tools-4.3/RunBWA 
  593  vi NWRCE-Tools-4.3/RunBWA 
  594  diff -u NWRCE-Tools-4.3/ExtractUnambigConsensusSeq /home/nwrce-data/shared/marad/beta/ExtractUnambigConsensusSeq 
  595  cp /home/nwrce-data/shared/marad/beta/ExtractUnambigConsensusSeq NWRCE-Tools-4.3/
  596  diff -u NWRCE-Tools-4.3/ProcessBAMVariants /home/nwrce-data/shared/marad/beta/ProcessBAMVariants 
  597  cp /home/nwrce-data/shared/marad/beta/ProcessBAMVariants NWRCE-Tools-4.3/
  598  tar czvf NWRCE-Tools-4.3.tar.gz NWRCE-Tools-4.3
  599  rm -rf NWRCE-Tools-4.3/
  600  cd ../SPECS/
  601  vi NWRCE-Tools.spec 
  602  rpmbuild -ba NWRCE-Tools.spec 
  603  rm /home/marad/rpmbuild/RPMS/x86_64/NWRCE-Tools-debuginfo-4.3-60.x86_64.rpm
  604  cd
  605  rm -rf rpmbuild/
  606  exit
  607  df -h -l
  608  exit
  609  ls
  610  scp -r metaphlan2-8fe1974cfa2b data-13:
  611  exit
  612  /usr/bin/rpmdev-setuptree
  613  mv FastUniq-1.1.tar.gz rpmbuild/SOURCES/
  614  cd rpmbuild/SOURCES/
  615  tar xzvf FastUniq-1.1.tar.gz 
  616  vi FastUniq/README.txt 
  617  vi FastUniq/source/Makefile 
  618  ls
  619  rm -rf FastUniq/
  620  cd ../SPECS/
  621  vi FastUniq.spec
  622  vi FastUniq/README.txt 
  623  vi FastUniq.spec
  624  rpmbuild -ba FastUniq.spec 
  625  vi FastUniq.spec
  626  rpmbuild -ba FastUniq.spec 
  627  rm /home/marad/rpmbuild/RPMS/x86_64/FastUniq-debuginfo-1.1-1.x86_64.rpm
  628  cd
  629  rm -rf rpmbuild/
  630  exit
  631  wget http://ab.inf.uni-tuebingen.de/data/software/pauda/download/pauda-1.0.1.zip
  632  wget http://ab.inf.uni-tuebingen.de/data/software/pauda/download/merge.blast.pl
  633  /usr/bin/rpmdev-setuptree
  634  mv pauda-1.0.1.zip rpmbuild/SOURCES/
  635  mv merge.blast.pl rpmbuild/SOURCES/
  636  cd rpmbuild/SOURCES/
  637  unzip pauda-1.0.1.zip 
  638  vi pauda-1.0.1/ReadMe.txt 
  639  ls -la pauda-1.0.1/bin/
  640  ls -la
  641  rm pauda
  642  rm -rf pauda-1.0.1/
  643  ls
  644  unzip pauda-1.0.1.zip 
  645  vi pauda-1.0.1/ReadMe.txt 
  646  vi pauda-1.0.1/ReleaseNotes.txt 
  647  vi pauda-1.0.1/Version.txt 
  648  rm -rf pauda-1.0.1/
  649  cd ../SPECS/
  650  vi pauda.spec
  651  rpmbuild -ba pauda.spec 
  652  ls ../SOURCES/
  653  vi pauda.spec
  654  rpmbuild -ba pauda.spec 
  655  rm /home/marad/rpmbuild/RPMS/x86_64/pauda-debuginfo-1.0.1-1.x86_64.rpm
  656  cd
  657  rm -rf rpmbuild/
  658  exit
  659  ls
  660  ls /data1/marad/
  661  ls /data2/marad/
  662  exit
  663  ls /home/nwrce-data/shared/marad/
  664  ls /home/nwrce-data/shared/marad/beta/
  665  diff -u /usr/local/NWRCE-Tools/RunBWA /home/nwrce-data/shared/marad/beta/RunBWA 
  666  diff -u /usr/local/NWRCE-Tools/RunMLST /home/nwrce-data/shared/marad/beta/RunMLST 
  667  ls /home/nwrce-data/shared/marad/beta/
  668  diff -u /usr/local/NWRCE-Tools/SortIlluminaDualIndexedReads /home/nwrce-data/shared/marad/beta/SortIlluminaDualIndexedReads 
  669  ls
  670  /usr/bin/rpmdev-setuptree
  671  rpm -Uvh http://soft-01/misc/SRPMS/NWRCE-Tools-4.3-60.src.rpm
  672  rpm -q NWRCE-Tools
  673  cd rpmbuild/SOURCES/
  674  tar xzvf NWRCE-Tools-4.3.tar.gz 
  675  rm NWRCE-Tools-4.3.tar.gz 
  676  cp /home/nwrce-data/shared/marad/beta/* NWRCE-Tools-4.3/
  677  ls /home/nwrce-data/shared/marad/beta/
  678  tar czvf NWRCE-Tools-4.3.tar.gz NWRCE-Tools-4.3
  679  rm -rf NWRCE-Tools-4.3/
  680  cd ../SPECS/
  681  vi NWRCE-Tools.spec 
  682  rpmbuild -ba NWRCE-Tools.spec 
  683  rm /home/marad/rpmbuild/RPMS/x86_64/NWRCE-Tools-debuginfo-4.3-61.x86_64.rpm
  684  cd
  685  rm -rf rpmbuild/
  686  rpm -q NWRCE-Tools
  687  sudo yum clean all
  688  sudo yum update
  689  diff -u /usr/local/NWRCE-Tools/SortIlluminaDualIndexedReads /home/nwrce-data/shared/marad/beta/SortIlluminaDualIndexedReads 
  690  diff -u /usr/local/NWRCE-Tools/RunMLST /home/nwrce-data/shared/marad/beta/RunMLST 
  691  diff -u /usr/local/NWRCE-Tools/RunBWA /home/nwrce-data/shared/marad/beta/RunBWA 
  692  rm /home/nwrce-data/shared/marad/beta/*
  693  exit
  694  w
  695  cp /home/nwrce-data/shared/mbrittna/Python/Microbiome/Starfish.v6.py /home/nwrce-data/shared/marad/beta/GUTSS
  696  vi /home/nwrce-data/shared/marad/beta/GUTSS
  697  vi /usr/local/NWRCE-Tools/RunBWA 
  698  vi /home/nwrce-data/shared/marad/beta/GUTSS
  699  vi /usr/local/NWRCE-Tools/RunBWA 
  700  vi /home/nwrce-data/shared/marad/beta/GUTSS
  701  /home/nwrce-data/shared/marad/beta/GUTSS
  702  vi /home/nwrce-data/shared/marad/beta/GUTSS
  703  /home/nwrce-data/shared/marad/beta/GUTSS
  704  vi /home/nwrce-data/shared/marad/beta/GUTSS
  705  /home/nwrce-data/shared/marad/beta/GUTSS
  706  vi /home/nwrce-data/shared/marad/beta/GUTSS
  707  /home/nwrce-data/shared/marad/beta/GUTSS
  708  vi /home/nwrce-data/shared/marad/beta/GUTSS
  709  /home/nwrce-data/shared/marad/beta/GUTSS
  710  /home/nwrce-data/shared/marad/beta/GUTSS --version
  711  exit
  712  ls
  713  ls /data2/marad/
  714  cp /home/nwrce-data/shared/eliweiss/hmp_samples/saturation/Ab_100k.?.fq ./
  715  ls
  716  /home/nwrce-data/shared/marad/beta/GUTSS
  717  /home/nwrce-data/shared/marad/beta/GUTSS -a Ab_100k.1.fq -b Ab_100k.2.fq -o Abbb-test -k 31 -q /home/nwrce-data/shared/marad/ContrastReads/query_per_sequence
  718  /home/nwrce-data/shared/marad/beta/GUTSS
  719  /home/nwrce-data/shared/marad/beta/GUTSS -a Ab_100k.1.fq -b Ab_100k.2.fq -o Abbb-test -k 31 -q /home/nwrce-data/shared/marad/ContrastReads/query_per_sequence
  720  rm -rf Abbb-test/
  721  rm /dev/shm/tmp*
  722  vi /home/nwrce-data/shared/marad/beta/GUTSS
  723  /home/nwrce-data/shared/marad/beta/GUTSS -a Ab_100k.1.fq -b Ab_100k.2.fq -o Abbb-test -k 31 -q /home/nwrce-data/shared/marad/ContrastReads/query_per_sequence
  724  vi /home/nwrce-data/shared/marad/beta/GUTSS
  725  /home/nwrce-data/shared/marad/beta/GUTSS -a Ab_100k.1.fq -b Ab_100k.2.fq -o Abbb-test -k 31 -q /home/nwrce-data/shared/marad/ContrastReads/query_per_sequence
  726  vi /home/nwrce-data/shared/marad/beta/GUTSS
  727  ls /dev/shm/
  728  rm -rf Abbb-test/
  729  /home/nwrce-data/shared/marad/beta/GUTSS -a Ab_100k.1.fq -b Ab_100k.2.fq -o Abbb-test -k 31 -q /home/nwrce-data/shared/marad/ContrastReads/query_per_sequence
  730  vi Abbb-test/results.txt 
  731  ls /home/seq-data/MiSeq-analysis/MS2684926-300V2
  732  ls /home/seq-data/MiSeq-analysis/MS2684926-300V2/BWA/
  733  ls
  734  ls ftp/
  735  sudo /bin/mount -o rw,log-level=WARNING,log-file=/var/log/gluster.log -t glusterfs storage-04-10g:/FTPData01 /home/marad/ftp
  736  rm ftp/Dandekar/*
  737  cp /home/seq-data/MiSeq-fastq/MS2684926-300V2_1_?_GCTACGCT_TAGATCGC.fastq ftp/Dandekar/
  738  cp /home/seq-data/MiSeq-fastq/MS2684926-300V2_1_?_CGAGGCTG_CTCTCTAT.fastq ftp/Dandekar/
  739  cp /home/seq-data/MiSeq-fastq/MS2599809-300V2_1_?_AGGCAGAA_TATCCTCT.fastq ftp/Dandekar/
  740  cp /home/seq-data/MiSeq-fastq/MS2599809-300V2_1_?_TCCTGAGC_AGAGTAGA.fastq ftp/Dandekar/
  741  sudo umount ftp
  742  exit
  743  vi /home/nwrce-data/shared/marad/beta/GUTSS
  744  /home/nwrce-data/shared/marad/beta/GUTSS
  745  cat /home/nwrce-data/marad/jellyfish-basics.txt 
  746  cat /home/nwrce-data/marad/jellyfish-pipeline.sh 
  747  cat /home/nwrce-data/shared/marad/ContrastReads/jellyfish-query-per-sequence-patch.txt 
  748  vi /home/nwrce-data/shared/marad/ContrastReads/jellyfish-query-per-sequence-patch.txt 
  749  vi /home/nwrce-data/shared/marad/beta/GUTSS
  750  vi /home/nwrce-data/shared/marad/ContrastReads/jellyfish-query-per-sequence-patch.txt 
  751  exit
  752  vi /home/nwrce-data/shared/marad/ContrastReads/jellyfish-query-per-sequence-patch.txt 
  753  /home/nwrce-data/shared/marad/beta/GUTSS
  754  env
  755  vi /home/nwrce-data/shared/marad/ContrastReads/jellyfish-query-per-sequence-patch.txt 
  756  vi /home/nwrce-data/shared/marad/beta/GUTSS
  757  vi /home/nwrce-data/shared/marad/ContrastReads/jellyfish-query-per-sequence-patch.txt 
  758  vi /home/nwrce-data/shared/marad/beta/GUTSS
  759  /home/nwrce-data/shared/marad/beta/GUTSS
  760  vi /home/nwrce-data/shared/marad/beta/GUTSS
  761  vi /home/nwrce-data/shared/marad/ContrastReads/jellyfish-query-per-sequence-patch.txt 
  762  vi /home/nwrce-data/shared/marad/beta/GUTSS
  763  mkdir /home/nwrce-data/shared/marad/GUTSS-1.0
  764  cp /home/nwrce-data/shared/marad/ContrastReads/jellyfish-query-per-sequence-patch.txt /home/nwrce-data/shared/marad/GUTSS-1.0/
  765  cp /home/nwrce-data/shared/marad/beta/GUTSS /home/nwrce-data/shared/marad/GUTSS-1.0/
  766  cp /home/nwrce-data/shared/marad/ContrastReads/query_per_sequenc* /home/nwrce-data/shared/marad/GUTSS-1.0/
  767  cd /home/nwrce-data/shared/marad/GUTSS-1.0/
  768  ls
  769  mv jellyfish-query-per-sequence-patch.txt README
  770  ls
  771  vi LICENSE
  772  ls
  773  vi LICENSE 
  774  vi README 
  775  cd
  776  exit
  777  cd /home/nwrce-data/shared/marad/GUTSS-1.0/
  778  vi README 
  779  exit
  780  ls
  781  exit
  782  cd /home/nwrce-data/shared/marad/GUTSS-1.0/
  783  vi README 
  784  vi GUTSS 
  785  cd ../
  786  scp -r GUTSS-1.0 dmsamson.no-ip.biz:Desktop
  787  vi /home/marad/.ssh/known_hosts +29
  788  scp -r GUTSS-1.0 dmsamson.no-ip.biz:Desktop
  789  cd
  790  ls
  791  scp Ab_100k.* dmsamson.no-ip.biz:Desktop
  792  cd /home/nwrce-data/shared/marad/GUTSS-1.0/
  793  vi README 
  794  cd ../
  795  head GUTSS-1.0/README 
  796  cd
  797  git clone https://github.com/marade/GUTSS.git
  798  cat /home/nwrce-data/shared/marad/GUTSS-1.0/README 
  799  :q
  800  ls
  801  git status
  802  rm -rf GUTSS/
  803  git remote add origin https://github.com/marade/GUTSS.git
  804  git init
  805  git remote add origin https://github.com/marade/GUTSS.git
  806  git remote -v
  807  git push
  808  cp -a /home/nwrce-data/shared/marad/GUTSS-1.0
  809  cp -a /home/nwrce-data/shared/marad/GUTSS-1.0 ./
  810  cd GUTSS-1.0/
  811  git init
  812  git add .
  813  git commit -m 'First commit'
  814  git remote -v
  815  git remote add origin https://github.com/marade/GUTSS.git
  816  git remote -v
  817  git push origin master
  818  git config user.name
  819  git config user.name marade
  820  git config user.name
  821  git push origin master
  822  rpm -q git
  823  vi /home/marad/.git/config 
  824  git push origin master
  825  vi .git/config 
  826  git push origin master
  827  vi .git/config 
  828  git push origin master
  829  git merge origin master
  830  git fetch origin
  831  ls
  832  git merge origin master
  833  git add .
  834  git commit -m 'First commit'
  835  git push origin master
  836  git add -A
  837  git commit -am "message"
  838  git merge origin master
  839  git merge origin/master
  840  git push origin master
  841  exit
  842  rpm -q abyss
  843  rpm -qi abyss
  844  ls
  845  /usr/bin/rpmdev-setuptree
  846  rpm -Uvh http://soft-01/misc/SRPMS/abyss-1.3.6-1.src.rpm
  847  cd rpmbuild/SOURCES/
  848  wget https://github.com/bcgsc/abyss/releases/download/1.5.2/abyss-1.5.2.tar.gz
  849  rm abyss-1.3.6.tar.gz 
  850  cd ../SPECS/
  851  vi abyss.spec 
  852  rpmbuild -ba abyss.spec 
  853  rm /home/marad/rpmbuild/RPMS/x86_64/abyss-debuginfo-1.5.2-1.x86_64.rpm
  854  cd
  855  rm -rf rpmbuild/
  856  exit
  857  history | grep nBW
  858  exit
  859  df -h -l
  860  exit
  861  ./metaphlan.py --version
  862  exit
  863  ls
  864  rpm -q bcl2fastq
  865  exit
  866  w
  867  exit
  868  ls
  869  /usr/bin/rpmdev-setuptree
  870  rpm -Uvh http://soft-01/misc/SRPMS/Trimmomatic-0.33-1.src.rpm
  871  cd rpmbuild/SPECS/
  872  rpmbuild -ba Trimmomatic.spec 
  873  rm /home/marad/rpmbuild/RPMS/x86_64/Trimmomatic-debuginfo-0.33-1.x86_64.rpm
  874  cd
  875  rm -rf rpmbuild/
  876  /usr/bin/rpmdev-setuptree
  877  rpm -Uvh http://soft-01/misc/SRPMS/kneaddata-0.35-1.src.rpm
  878  cd rpmbuild/SPECS/
  879  rpmbuild -ba kneaddata.spec 
  880  rm /home/marad/rpmbuild/RPMS/x86_64/kneaddata-debuginfo-0.35-1.x86_64.rpm
  881  cd
  882  rm -rf rpmbuild/
  883  exit
  884  ls
  885  /usr/bin/rpmdev-setuptree
  886  rpm -Uvh http://springdale.math.ias.edu/data/puias/computational/6/SRPMS/springdale-computational-6-2.sdl6.10.src.rpm
  887  ls rpmbuild/SOURCES/
  888  vi rpmbuild/SPECS/springdale-repo-6.spec 
  889  rpm -Uvh http://springdale.math.ias.edu/data/puias/6Server/source/os/springdale-core-6-3.sdl6.10.src.rpm
  890  ls rpmbuild/SOURCES/
  891  rpm -Uvh http://springdale.math.ias.edu/data/puias/6Server/source/os/springdale-release-6-6.6.0.45.sdl6.3.src.rpm
  892  cd rpmbuild/SOURCES/
  893  tar xzvf springdale-release-6.3.tar.gz 
  894  scp springdale-release-6/RPM-GPG-KEY-puias soft-01:
  895  rpm -qa | grep -i emb
  896  ls /etc/yum.repos.d/
  897  sudo yum clean all
  898  sudo yum update
  899  sudo yum install python27
  900  cd
  901  rm -rf rpmbuild/
  902  /usr/bin/rpmdev-setuptree
  903  rpm -Uvh http://soft-01/misc/SRPMS/kneaddata-0.35-1.src.rpm
  904  cd rpmbuild/SPECS/
  905  vi kneaddata.spec 
  906  rpmbuild -ba kneaddata.spec 
  907  vi kneaddata.spec 
  908  rpmbuild -ba kneaddata.spec 
  909  sudo yum install python27-setuptools
  910  vi kneaddata.spec 
  911  rpmbuild -ba kneaddata.spec 
  912  vi kneaddata.spec 
  913  rpmbuild -ba kneaddata.spec 
  914  vi kneaddata.spec 
  915  rpmbuild -ba kneaddata.spec 
  916  rm /home/marad/rpmbuild/RPMS/x86_64/kneaddata-debuginfo-0.35-2.x86_64.rpm
  917  cd
  918  rm -rf rpmbuild/
  919  exit
  920  ls
  921  /usr/bin/rpmdev-setuptree
  922  rpm -Uvh http://soft-01/misc/SRPMS/kneaddata-0.35-2.src.rpm
  923  cd rpmbuild/SPECS/
  924  vi kneaddata.spec 
  925  rpmbuild -ba kneaddata.spec 
  926  rm /home/marad/rpmbuild/RPMS/x86_64/kneaddata-debuginfo-0.35-3.x86_64.rpm
  927  exit
  928  rm -rf rpmbuild/
  929  exit
  930  ls
  931  /usr/bin/rpmdev-setuptree
  932  cd rpmbuild/SOURCES/
  933  cp -a /home/nwrce-data/shared/marad/metagenomics/HMP_filtering_pipeline/DPWG_ProcessingTools ./
  934  cd DPWG_ProcessingTools/
  935  ls
  936  vi README.DACC_Tools
  937  vi README.FIRST 
  938  vi README.parse_meta 
  939  cd ../
  940  mv DPWG_ProcessingTools/ DPWG-Processing-Tools-1.0
  941  tar czvf DPWG-Processing-Tools-1.0.tar.gz DPWG-Processing-Tools-1.0
  942  rm -rf DPWG-Processing-Tools-1.0/
  943  cd ../SPECS/
  944  vi DPWG-Processing-Tools.spec
  945  rpmbuild -ba DPWG-Processing-Tools.spec 
  946  rm /home/marad/rpmbuild/RPMS/x86_64/DPWG-Processing-Tools-debuginfo-1.0-1.x86_64.rpm
  947  cd ../SOURCES/
  948  cd ../SPECS/
  949  cp DPWG-Processing-Tools.spec kneddata-db.spec
  950  vi kneddata-db.spec
  951  cd ../SOURCES/
  952  ls
  953  mv ~/kd/ ./
  954  ls kd/
  955  mv kd kneaddata-db-1.0
  956  tar czvf kneaddata-db-1.0.tar.gz kneaddata-db-1.0
  957  rm -rf kneaddata-db-1.0/
  958  cd ../SPECS/
  959  vi kneddata-db.spec 
  960  rpmbuild -ba kneddata-db.spec 
  961  mv kneddata-db.spec kneaddata-db.spec 
  962  rpmbuild -ba kneaddata-db.spec 
  963  rm /home/marad/rpmbuild/RPMS/x86_64/kneaddata-db-debuginfo-1.0-1.x86_64.rpm
  964  cd
  965  rm -rf rpmbuild/
  966  exit
  967  /usr/bin/rpmdev-setuptree
  968  rpm -Uvh http://soft-01/misc/SRPMS/DPWG-Processing-Tools-1.0-1.src.rpm
  969  cd rpmbuild/SPECS/
  970  vi DPWG-Processing-Tools.spec 
  971  rpmbuild -ba DPWG-Processing-Tools.spec 
  972  rm /home/marad/rpmbuild/RPMS/x86_64/DPWG-Processing-Tools-debuginfo-1.0-2.x86_64.rpm
  973  exit
  974  ls
  975  rm -rf rpmbuild/
  976  /usr/bin/rpmdev-setuptree
  977  rpm -Uvh http://soft-01/misc/SRPMS/picard-1.136-1.src.rpm
  978  cd rpmbuild/SPECS/
  979  rpmbuild -ba picard.spec 
  980  sudo yum install ant-apache-bcel ant-nodeps
  981  rpmbuild -ba picard.spec 
  982  rm /home/marad/rpmbuild/RPMS/x86_64/picard-debuginfo-1.136-1.x86_64.rpm
  983  exit
  984  rm -rf rpmbuild/
  985  exit
  986  cat /home/nwrce-data/marad/ceph.txt 
  987  exit
  988  ls -la
  989  scp -c arcfour -r metaphlan2-8fe1974cfa2b data-31:
  990  scp -c arcfour -r metaphlan2-8fe1974cfa2b data-32:
  991  exit
  992  w
  993  df -h
  994  lsof /home/seq-data/HiSeq-fastq
  995  sudo lsof /home/seq-data/HiSeq-fastq
  996  sudo umount /home/seq-data/HiSeq-fastq 
  997  w
  998  sudo /sbin/reboot 
  999  df -h
 1000  exit
 1001  history | grep gith
 1002  ls
 1003  ls GUTSS-1.0/
 1004  history | grep git
 1005  cp /home/nwrce-data/shared/marad/GUTSS-1.0/GUTSS GUTSS-1.0/
 1006  cp -a /home/nwrce-data/shared/marad/GUTSS-1.0/test GUTSS-1.0/
 1007  cd GUTSS-1.0/
 1008  git commit -m 'various updates'
 1009  git add -A
 1010  git push origin master
 1011  git commit -m 'various updates'
 1012  git push origin master
 1013  cd test/
 1014  ls
 1015  for x in *.fq; do gzip ${x}; done
 1016  ls -lah
 1017  rm sim49?_2*
 1018  ls
 1019  cd ../
 1020  git add -A
 1021  df -h
 1022  git push origin master
 1023  git commit -m 'more updates'
 1024  git push origin master
 1025  ls -lah
 1026  ls -lah test/
 1027  git remove test/sim49a_2M.fq
 1028  git rm test/sim49a_2M.fq
 1029  man git add
 1030  man git push
 1031  git clean
 1032  git clean -f
 1033  git push origin master
 1034  git commit -m 'more updates'
 1035  git push origin master
 1036  git rm  --cached test/sim49a_2M.fq
 1037  cd test/
 1038  ls
 1039  cp -a /home/nwrce-data/shared/marad/GUTSS-1.0/test/* ./
 1040  ls
 1041  git rm  *.fq
 1042* 
 1043  git commit -m 'more updates'
 1044  git help
 1045  mv *.gz ../
 1046  cd
 1047  rm -rf GUTSS-1.0/
 1048  git clone https://github.com/marade/GUTSS.git
 1049  ls
 1050  cd GUTSS/
 1051  ls
 1052  mkdir test
 1053  mv ~/*.gz test/
 1054  cp -a /home/nwrce-data/shared/marad/GUTSS-1.0/test/sim49*1M.fq
 1055  cp -a /home/nwrce-data/shared/marad/GUTSS-1.0/test/sim49*1M.fq ./
 1056  mv sim49* test/
 1057  cd test/
 1058  ls
 1059  for x in *.fq; do gzip ${x}; done
 1060  ls
 1061  cd ../
 1062  rm README
 1063  vi README.md 
 1064  git commit -m 'more updates'
 1065  git add -A
 1066  git commit -m 'more updates'
 1067  git push origin master
 1068  history | grep git
 1069  vi .git/config 
 1070  git push origin master
 1071  man git push
 1072  vi /home/marad/.git/config 
 1073  vi .git/config 
 1074  git push origin master
 1075  vi .git/config 
 1076  git push origin master
 1077  git config --global user.name "marade"
 1078  git push origin master
 1079  vi /home/marad/.git/config 
 1080  vi .git/config 
 1081  git push origin master
 1082  history > kk
