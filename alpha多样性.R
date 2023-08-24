#install.packages("ggpubr")

library(ggpubr)           
inputFile="evenness_statistics_dada2_hard.txt"      
outFile="evenness_statistics_dada2_hard.pdf"      
setwd("C:/Users/10065/Desktop/吴/2.alpha多样性（p值有意义的图保留）/2输入文件") 

#读取输入文件
rt=read.table(inputFile,sep="\t",header=T,check.names=F)
x=colnames(rt)[2]
y=colnames(rt)[3]
colnames(rt)=c("id","Type","Expression")

#设置比较租
group=levels(factor(rt$Type))
rt$Type=factor(rt$Type, levels=group)
comp=combn(group,2)
my_comparisons=list()
for(i in 1:ncol(comp)){my_comparisons[[i]]<-comp[,i]}

#绘制boxplot
boxplot=ggboxplot(rt, x="Type", y="Expression", color="Type",
                palette=c("#207c3f","#da5714"),
		          xlab="Macroscopic types",
		          ylab="pielou evenness index",
		          legend.title=x,
		          add = "jitter")+
              stat_compare_means(comparisons = my_comparisons)
               

#输出图片
pdf(file=outFile, width=5.5, height=5)
print(boxplot)
dev.off()

####
inputFile="faiths_pd_statistics_dada2_hard.txt"      
outFile="faiths_pd_statistics_dada2_hard.pdf"      

#读取输入文件
rt=read.table(inputFile,sep="\t",header=T,check.names=F)
x=colnames(rt)[2]
y=colnames(rt)[3]
colnames(rt)=c("id","Type","Expression")

#设置比较租
group=levels(factor(rt$Type))
rt$Type=factor(rt$Type, levels=group)
comp=combn(group,2)
my_comparisons=list()
for(i in 1:ncol(comp)){my_comparisons[[i]]<-comp[,i]}

#绘制boxplot
boxplot=ggboxplot(rt, x="Type", y="Expression", color="Type",
                  palette=c("#207c3f","#da5714"),
                  xlab="Macroscopic types",
                  ylab="faiths phylogenetic index",
                  legend.title=x,
                  add = "jitter")+
                  stat_compare_means(comparisons = my_comparisons)

#输出图片
pdf(file=outFile, width=5.5, height=5)
print(boxplot)
dev.off()

####observed####
inputFile="observed_otus_statistics_dada2_hard.txt"      
outFile="observed_otus_statistics_dada2_hard.pdf"      

#读取输入文件
rt=read.table(inputFile,sep="\t",header=T,check.names=F)
x=colnames(rt)[2]
y=colnames(rt)[3]
colnames(rt)=c("id","Type","Expression")

#设置比较租
group=levels(factor(rt$Type))
rt$Type=factor(rt$Type, levels=group)
comp=combn(group,2)
my_comparisons=list()
for(i in 1:ncol(comp)){my_comparisons[[i]]<-comp[,i]}

#绘制boxplot
boxplot=ggboxplot(rt, x="Type", y="Expression", color="Type",
                  palette=c("#207c3f","#da5714"),
                  xlab="Macroscopic types",
                  ylab="observed features index",
                  legend.title=x,
                  add = "jitter")+
                  stat_compare_means(comparisons = my_comparisons)

#输出图片
pdf(file=outFile, width=5.5, height=5)
print(boxplot)
dev.off()

####shannon####
inputFile="shannon_statistics_dada2_hard.txt"      
outFile="shannon_statistics_dada2_hard.pdf"      


#读取输入文件
rt=read.table(inputFile,sep="\t",header=T,check.names=F)
x=colnames(rt)[2]
y=colnames(rt)[3]
colnames(rt)=c("id","Type","Expression")

#设置比较租
group=levels(factor(rt$Type))
rt$Type=factor(rt$Type, levels=group)
comp=combn(group,2)
my_comparisons=list()
for(i in 1:ncol(comp)){my_comparisons[[i]]<-comp[,i]}

#绘制boxplot
boxplot=ggboxplot(rt, x="Type", y="Expression", color="Type",
                  palette=c("#207c3f","#da5714"),
                  xlab="Macroscopic types",
                  ylab="shannon entropy index",
                  legend.title=x,
                  add = "jitter")+
                  stat_compare_means(comparisons = my_comparisons)

#输出图片
pdf(file=outFile, width=5.5, height=5)
print(boxplot)
dev.off()
# test
