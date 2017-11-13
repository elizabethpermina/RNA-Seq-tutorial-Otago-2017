library("edgeR")

files <- c(
  "untreat1.counts",
  "untreat2.counts",
"treat1.counts",
"treat2.counts"
)

labels=c("C_1", "C_2", "T_1", "T_2")

data <- readDGE(files)

print(data)

###

group <- c(rep("c", 2), rep("t", 2))

dge = DGEList(counts=data, group=group)
dge <- estimateCommonDisp(dge)
dge <- estimateTagwiseDisp(dge)

# make an MA-plot

et <- exactTest(dge, pair=c("c", "t"))
etp <- topTags(et, n=100000)
etp$table$logFC = -etp$table$logFC
pdf("dros-edgeR-MA-plot.pdf")
plot(
  etp$table$logCPM,
  etp$table$logFC,
  xlim=c(-3, 20), ylim=c(-12, 12), pch=20, cex=.3,
  col = ifelse( etp$table$FDR < .2, "red", "black" ) )
dev.off()

# plot MDS
pdf("dm-edgeR-MDS.pdf")
plotMDS(dge, labels=labels)
dev.off()

# output CSV for 0-6 hr
write.csv(etp$table, "dm-edgeR.csv")

