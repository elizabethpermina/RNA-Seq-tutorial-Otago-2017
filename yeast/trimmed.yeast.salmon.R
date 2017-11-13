setwd("/Users/elizabethpermina/Documents/1_OGFfiles/Workshop/1_RNA-Seq/yeast/data/processed")


files = c("ERR458493.fastq.trimmed.gz.quant.counts",
"ERR458494.fastq.trimmed.gz.quant.counts",
          "ERR458495.fastq.trimmed.gz.quant.counts",
          "ERR458500.fastq.trimmed.gz.quant.counts",
          "ERR458501.fastq.trimmed.gz.quant.counts",
          "ERR458502.fastq.trimmed.gz.quant.counts")



labels=c("WT_1", "WT_2", "WT_3", "MUT_1", "MUT_2", "MUT_3")

data <- readDGE(files)

print(data)

###

group <- c(rep("mut", 3), rep("wt", 3))

dge = DGEList(counts=data, group=group)
dge <- estimateCommonDisp(dge)
dge <- estimateTagwiseDisp(dge)

# make an MA-plot

et <- exactTest(dge, pair=c("wt", "mut"))
hist(et$table[,"PValue"], breaks=50)
#since we defined your contrast this way - "wt", "mut", the results (logFC) will be positive for things upregulated in mutant
# and negative for downregulated in mutant
etp <- topTags(et, n=100000)
etp$table$logFC = -etp$table$logFC
pdf("trimmed-yeast-edgeR-MA-plot.pdf")
plot(
  etp$table$logCPM,
  etp$table$logFC,
  xlim=c(-3, 20), ylim=c(-12, 12), pch=20, cex=.3,
  col = ifelse( etp$table$FDR < .2, "red", "black" ) )
dev.off()

# plot MDS
pdf("trimmed-yeast-edgeR-MDS.pdf")
plotMDS(dge, labels=labels)
dev.off()


#making volcano plot
volcanoData <- cbind(etp$table$logFC, -log10(etp$table$FDR))
colnames(volcanoData) <- c("logFC", "negLogPval")
head(volcanoData)
plot(volcanoData, pch=19, col = ifelse( etp$table$FDR < .1, "red", "black" ))
dev.off()



# output CSV for 0-6 hr
write.csv(etp$table, "trimmed-yeast-edgeR.csv")
