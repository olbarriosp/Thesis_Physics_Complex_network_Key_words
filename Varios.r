
setwd("C:/Users/Olga/Downloads/aps-dataset-metadata-2013/")
## CARGAR DATOS:
#  CC = gregexpr(pattern ='2000',X$date[[i]])[[1]][1]
#install.packages('R.matlab')
# substr(names(links)[2], start=2, stop=12)

load("PR.RData")
load("PRA.RData")
load("PRB.RData")
load("PRC.RData")
load("PRD.RData")
load("PRE.RData")
load("PRI.RData")
load("PRL.RData")
load("PRSTAB.RData")
load("PRSTPER.RData")
load("PRX.RData")

#FORMATO: LIST
library(rjson)
resutl <- fromJSON(file = "PhysRev.1.1.json")



#FORMATO: DATA FRAME
file <- "*.json"
conn <- file(file, "r")
input <- readLines(conn, -1L)
test <- lapply(input, fromJSON)
test <- lapply(test, cbind)
test <- as.data.frame(test)
test <- as.data.frame(t(test))
row.names(test) <- seq(1, nrow(test))

#FORMATO: DATA FRAME
library(RJSONIO)
Lines <- readLines("PhysRev.1.1.json") #
business <- as.data.frame(t(sapply(Lines, fromJSON)))

#Leer multiarchivo.
#http://www.ats.ucla.edu/stat/r/pages/read_multiple.htm
(f<-file.path("C:/Users/Olga/Downloads/aps-dataset-metadata-2013/PR/1/",c("PhysRev.1.1.json","PhysRev.1.124.json","PhysRev.1.141.json"))) #Lee los archivos
d <- lapply(f,fromJSON) #crea la lista
lapply(d,names) #imprime los nombres
names(d) <- gsub(".*/(.*)\\..*", "\\1", f)
summary(d$PhysRev.1.124)#Muestra un resumen de esa columna

##LEE todos los archivos-------------------------
library(RJSONIO)
library(foreign)
setwd("C:/Users/Olga/Downloads/aps-dataset-metadata-2013/")
(f <-  file.path("C:/Users/Olga/Downloads/aps-dataset-metadata-2013/PR/1",list.files("C:/Users/Olga/Downloads/aps-dataset-metadata-2013/PR/1",all.files = F, include.dirs = T)))
PR3 <- lapply(f,fromJSON) # crea la lista al leer los archivos
names(PR3) <- gsub(".*/(.*)\\..*", "\\1", f)

##UNIFICAR-------------------------

save(TOTAL,file = "PRABCD.RData")
rm(PR,PRA,PRB,PRC,PRC,PRD,PRE)

##MATLAB EN R--------
load('vectorPACS.RData')
length(vecPACS)
PACSvec <- c()
for(i in 1:length(vecPACS)){
  PACSvec[i]<- c(vecPACS[[i]])
}

library(R.matlab)
path <- system.file("mat-files", package="R.matlab")
filename <- paste(tempfile(), ".mat", sep="")
writeMat(filename, PACSvec = PACSvec)
data <- readMat("PACSvec.mat") #leer archivos mat
load('Matrices.RData')
writeMat("M00.mat", M00 =Matrices$M00)
writeMat("M01.mat", M01 =Matrices$M01)
writeMat("M02.mat", M02 =Matrices$M02)
writeMat("M03.mat", M03 =Matrices$M03)
writeMat("M04.mat", M04 =Matrices$M04)
writeMat("M05.mat", M05 =Matrices$M05)
writeMat("M06.mat", M06 =Matrices$M06)
writeMat("M07.mat", M07 =Matrices$M07)
writeMat("M08.mat", M08 =Matrices$M08)
writeMat("M09.mat", M09 =Matrices$M09)
writeMat("M10.mat", M10 =Matrices$M10)
writeMat("M11.mat", M11 =Matrices$M11)
writeMat("M12.mat", M12 =Matrices$M12)
writeMat("M13.mat", M13 =Matrices$M13)

AlertMail('olbarriosp@gmail.com')


