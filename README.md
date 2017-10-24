# RNA-Seq-tutorial-Otago-2017
RNA-Seq tutorial materials - slides, training data, code lines
Training materials - https://zenodo.org/record/61765#.We6iIBOCzVE


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
Training material could be taken from here: https://zenodo.org/record/61765#.We6iIBOCzVE

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

