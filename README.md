# RNA-Seq-tutorial-Otago-2017
RNA-Seq tutorial materials - slides, training data, code lines
Training materials -

# get the data in:
ftp://ftp.sra.ebi.ac.uk/vol1/fastq/ERR458/ERR458500/ERR458500.fastq.gz

ftp://ftp.sra.ebi.ac.uk/vol1/fastq/ERR458/ERR458501/ERR458501.fastq.gz

ftp://ftp.sra.ebi.ac.uk/vol1/fastq/ERR458/ERR458502/ERR458502.fastq.gz

ftp://ftp.sra.ebi.ac.uk/vol1/fastq/ERR458/ERR458493/ERR458493.fastq.gz

ftp://ftp.sra.ebi.ac.uk/vol1/fastq/ERR458/ERR458494/ERR458494.fastq.gz

ftp://ftp.sra.ebi.ac.uk/vol1/fastq/ERR458/ERR458495/ERR458495.fastq.gz

# get the reference
curl -O http://downloads.yeastgenome.org/sequence/S288C_reference/orf_dna/orf_coding.fasta.gz


# ETHERPAD WITH LINKS FOR THIS WORKSHOP IS HERE: 
https://beta.etherpad.org/p/H9l6EdbQfR

TENTATIVE CURRICULUM

RNA-Seq workshop Otago 


Linux for Bioinformatics
Introduction to the command line and important commands
Combining commands by piping and redirection
Introduction to bioinformatics file formats (e.g. FASTA, BED, VCF, WIG) and databases (e.g. UCSC, ENSEMBL)
Usage of important bioinformatics toolkits (BEDtools, UCSCtools)
Introduction to R
Creating virtual labs with Aleksandra Pawlik
1.5 Genomics of RNA-Seq analysis 
Basics of experiment design with Erica Todd
Best practices and tips and tricks for TruSeq stranded total RNA library preparation (Aaron?)
Best practices of sequencing library validation




2. Introduction to NGS data analysis
Introduction to sequencing technologies from a data analysts view
Raw sequence files (FASTQ format)
Preprocessing of raw reads: quality control (FastQC), adapter clipping, quality trimming
Introduction to read mapping (Alignment methods, Mapping heuristics)
Read mapping (BWA, Bowtie2, STAR, hisat2)
Mapping output (SAM/BAM format)
Usage of important NGS toolkits (samtools, BEDtools)
Mapping statistics
Visualization of mapped reads (IGV, UCSC, Tablet)
Training material could be taken from here: ftp://ftp.sra.ebi.ac.uk/vol1/fastq/ERR458/
(yeast data, 2 conditions (mt,mt,mt, wt,wt,wt) 
Alternative dataset is here: https://zenodo.org/record/61765#.We6iIBOCzVE

3. RNA-seq Data Analyses
Understand split-read mapping
Run different split-read mappers (tophat, hisat2, STAR)
Understand the Tuxedo Suite (cufflinks, cuffcompare, cuffmerge, cuffdiff, etc.)
Predict new transcripts/isoforms using cufflinks/cuffmerge
Quantify exons/genes/transcripts
Predict
Differential exon usage using DEXseq/DEXSeq2
Differential gene expression using DEseq/DEseq2
Map or pseudomap?
Differential isoform expression using cuffdiff

4. Representing you results

Ggplot2
Gviz
Types of vizual data representation
Making reports with knitr and Rmarkdown

