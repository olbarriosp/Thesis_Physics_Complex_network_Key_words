setwd("c:/Users/Olga/Dropbox/NetworksTesis/Programa/aps-dataset-metadata-2013/ProcesamientoR/")
load('vectorPACS.RData')
vcPACS <- dPACS$pacs
class(vcPACS)
save(vecPACS, file = 'vectorPACS.RData')
load('PACStotales.Rdata')


require(plyr)
require(stringr)
prueb0 <- read.csv("../PACS/PACS2010.txt", header = F, sep = ";") #1334 no

prueb <- read.csv("../PACS/TodosPACS.csv", header = F, sep = "\t") #313 

prueb = prueb$V2
tex = prueb3[,2]
dim(prueb)
class(prueb)
View(prueb)

tex<- sapply(tex, as.character)
class(tex)

prueb <- sapply(prueb, as.character)
prueb <- lapply(prueb, as.character)
length(prueb)
prueb[5]
class(prueb)

#PACSS <- sapply(unique(prueb[,1]), as.character)
#length(PACSS)

prueb <- unique(prueb)
p <- unique(p)

PACSS <- c()
texto_columnas <- c()
for (i in 1:length(prueb)){
  #i = 7
  prueb[i]
  texto_split = strsplit(prueb[i], split =', ') #split= '\\s+')
  texto_split
  if(length(texto_split[[1]])>1){
  texto_split <- sapply(texto_split, as.character)
  #PACSS = texto_split[1,1]
  PACSS[i] = texto_split[nrow(texto_split),1]
  PACSS
  #PACS = strsplit(PACSS, split=" ")
  #texto_splitV = texto_split[2:length(texto_split),]
  texto_splitV = texto_split[1:length(texto_split)-1,]
  texto_splitV
  texto_columnas[i] <- paste(texto_splitV, collapse=" ")
  texto_columnas
  }
}

length(texto_columnas)
length(PACSS)

#pacs00 <- list(PACSS,texto_columnas)
#names(pacs00) <- c('PACS','txt')

 

aa <- match(vecPACS,PACSS)
aa <- !is.na(aa)
aa <- which(aa == TRUE) # encuentra las palabras que de prueb estan en PACS
length(aa)
#5282 (1)

bb <- match(vcPACS,termino$pacs)
bb <- is.na(bb)
bb <- which(bb == TRUE)# encuentra las palabras que de prueb estan en PACS
#bb
vcPACS[bb]
length(bb)
length(vecPACS)
#1324  (2)
#4271

cc <- match(aa,bb)
cc <- is.na(cc)
cc <- which(cc == TRUE) #encuentra las palabras que estan en aa pero no en bb
length(cc) #cantidad de num que no estan en comun
cc
ff <- c()
for(ii in 1:length(cc)){
ff[ii] = vecPACS[[aa[cc[ii]]]]
}
ff


gg <- match(ff, Pacs00)
gg
Pacs00[gg]
prueb[gg]

gg <- match(ff, PACSS)
gg
PACSS[gg]
texto_columnas[gg]

length(Pacs00)
Pacs00 <- c(Pacs00,PACSS[gg])
length(txt00)
txt00 <- c(txt00,texto_columnas[gg])


termino <- read.csv('PACSimpresos.csv',header = F,sep ='\t')
Pacs00 <- sapply(termino[,1], as.character)
Pacs00 <- sapply(Pacs00, as.character)
txt00 <- sapply(termino[,2], as.character)
txt00 <- sapply(txt00, as.character)
txt00[2]
Pacs00[2]

termino <- list(Pacs00,txt00)
names(termino) <- c('pacs','txt')

save(termino, file = 'PACStotales.Rdata')

dim(termino)
write.table(termino, 'PACSimpresos.csv')



