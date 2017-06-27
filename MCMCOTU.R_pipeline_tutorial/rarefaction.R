setwd("C:/Users/Justin/Desktop")

library(vegan)
source("http://www.jennajacobs.org/R/rarefaction.txt")

#otu_raw<-read.csv("OTU_97_clstr.sample_no5.csv") ##For Raw OTUs (straight off of sequencer, no pooling)
otu_raw<-read.csv("OTU_pooled_may_10.csv") ##For final pooled OTU data

head(otu_raw)
str(otu_raw)
_________________________________________________________________
________________________________________________________________

##ALL OTUS

otu_raw_all<- otu_raw[7:129] #138 for raw, 129 for pooled
head(otu_raw_all)

#Rarefaction curve for all OTUS 
otu_raw_all.rare<-rarefaction(otu_raw_all, col=F, plot=T)
###Y axis is actually the number of OTU
###X axis is actually the number of reads
____________________________________________________________

##OTUs by type

#Low
otu_low<- subset(otu_raw, type==1)
head(otu_low)
otu_low_1<- otu_low[7:129]
#Rarefaction curve OTUS at LOW sites 
otu_low_all.rare<-rarefaction(otu_low_1, col=F, plot=T, legend=F, symbol=F)

#MOD
otu_mod<- subset(otu_raw, type==2)
head(otu_mod)
otu_mod_1<- otu_mod[7:129]
#Rarefaction curve OTUS at MOD sites
otu_mod_all.rare<-rarefaction(otu_mod_1, col=F, plot=T, legend=F, symbol=F) 

#EXT
otu_ext<- subset(otu_raw, type==3)
head(otu_ext)
otu_ext_1<-otu_ext[7:129]
#Rarefaction curve OTUS at ext sites
otu_ext_all.rare<-rarefaction(otu_ext_1, col=F, plot=T, legend=F, symbol=F) 
___________________________________________________________________________
___________________________________________________________________________

###SSID OTUS by Type###
head(otu_raw)
otu_SSID<-subset(otu_raw, species==1)
otu_SSID

##SSID by Type


#Low
otu_low<- subset(otu_SSID, type==1)
head(otu_low)
otu_low_1<- otu_low[7:129]
#Rarefaction curve OTUS at LOW sites 
otu_low_all.rare<-rarefaction(otu_low_1, col=F, plot=T, legend=F, symbol=F)

#MOD
otu_mod<- subset(otu_SSID, type==2)
head(otu_mod)
otu_mod_1<- otu_mod[7:129]
#Rarefaction curve OTUS at MOD sites
otu_mod_all.rare<-rarefaction(otu_mod_1, col=F, plot=T, legend=F, symbol=F) 

#EXT
otu_ext<- subset(otu_SSID, type==3)
head(otu_ext)
otu_ext_1<-otu_ext[7:129]
#Rarefaction curve OTUS at ext sites
otu_ext_all.rare<-rarefaction(otu_ext_1, col=F, plot=T, legend=F, symbol=F)
__________________________________________________________________________

###PSTR by type

head(otu_raw)
otu_PSTR<-subset(otu_raw, species==3)
otu_PSTR

##PSTR by Type


#Low
otu_low<- subset(otu_PSTR, type==1)
head(otu_low)
otu_low_1<- otu_low[7:129]
#Rarefaction curve OTUS at LOW sites 
otu_low_all.rare<-rarefaction(otu_low_1, col=F, plot=T, legend=F, symbol=F)

#MOD
otu_mod<- subset(otu_PSTR, type==2)
head(otu_mod)
otu_mod_1<- otu_mod[7:129]
#Rarefaction curve OTUS at MOD sites
otu_mod_all.rare<-rarefaction(otu_mod_1, col=F, plot=T, legend=F, symbol=F) 

#EXT
otu_ext<- subset(otu_PSTR, type==3)
head(otu_ext)
otu_ext_1<-otu_ext[7:129]
#Rarefaction curve OTUS at ext sites
otu_ext_all.rare<-rarefaction(otu_ext_1, col=F, plot=T, legend=F, symbol=F)
____________________________________________________________________________

###SRAD by type

head(otu_raw)
otu_SRAD<-subset(otu_raw, species==2)
otu_SRAD


#Low
otu_low<- subset(otu_SRAD, type==1)
head(otu_low)
otu_low_1<- otu_low[7:129]
#Rarefaction curve OTUS at LOW sites 
otu_low_all.rare<-rarefaction(otu_low_1, col=F, plot=T, legend=F, symbol=F)

#MOD
otu_mod<- subset(otu_SRAD, type==2)
head(otu_mod)
otu_mod_1<- otu_mod[7:129]
#Rarefaction curve OTUS at MOD sites
otu_mod_all.rare<-rarefaction(otu_mod_1, col=F, plot=T, legend=F, symbol=F) 

#EXT
otu_ext<- subset(otu_SRAD, type==3)
head(otu_ext)
otu_ext_1<-otu_ext[7:129]
#Rarefaction curve OTUS at ext sites
otu_ext_all.rare<-rarefaction(otu_ext_1, col=F, plot=T, legend=F, symbol=F)

