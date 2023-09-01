#setwd("c:/Users/Olga/Dropbox/NetworksTesis/Programa/aps-dataset-metadata-2013/")
load("longitudesPACS.RData")
library(gsubfn) #MULTI- RETURN

CrearMatriz  = function(num,X){
  MM = matrix(nrow = length(X$pacs),ncol = Longitudes[[num]]) 
  
  for (i in 1:length(X$pacs)){
    for(j in 1:length(X$pacs[[i]])){
         MM[i,j]=X$pacs[[i]][[j]][[1]]
    }
  }
return(MM)
}



CrearVector = function(year,X,VPACS,iii,numm){
  for (i in 1:length(X$pacs)){
    for(j in 1:length(X$pacs[[i]])){
        aa <- is.na(match(X$pacs[[i]][[j]][[1]],VPACS))
        if(aa == TRUE){
          VPACS[length(VPACS)+ 1]<- X$pacs[[i]][[j]][[1]]
          iii[length(iii) + 1] <- c(i)
          numm[length(numm)+ 1] <- year
        }
    }
  }
  return(list(VPACS,iii,numm))
}

i00 <- c()
vectPACS <- c()
year <- c()
load("PACS2000.RData")
M00 = CrearMatriz(1,PACS)
list[vectPACS,i00,year] = CrearVector('2000',PACS,vectPACS,i00,year)
#write.table(M00,file ="M2000.csv")
length(vectPACS)
length(i00)
tail(i00)
head(vectPACS)

head(year)
tail(year)

load("PACS2001.RData")
M01 = CrearMatriz(2,PACS)
list[vectPACS,i00,year] = CrearVector('2001',PACS,vectPACS,i00,year)
#write.table(M01,file ="M2001.csv")

load("PACS2002.RData")
M02 = CrearMatriz(3,PACS)
list[vectPACS,i00,year] = CrearVector('2002',PACS,vectPACS,i00,year)
#write.table(M02,file ="M2002.csv")

load("PACS2003.RData")
M03 = CrearMatriz(4,PACS)
list[vectPACS,i00,year]= CrearVector('2003',PACS,vectPACS,i00,year)
#write.table(M03,file ="M2003.csv")

load("PACS2004.RData")
M04 = CrearMatriz(5,PACS)
list[vectPACS,i00,year] = CrearVector('2004',PACS,vectPACS,i00,year)
#write.table(M04,file ="M2004.csv")

load("PACS2005.RData")
M05 = CrearMatriz(6,PACS)
list[vectPACS,i00,year]= CrearVector('2005',PACS,vectPACS,i00,year)
#write.table(M05,file ="M2005.csv")

load("PACS2006.RData")
M06 = CrearMatriz(7,PACS)
list[vectPACS,i00,year] = CrearVector('2006',PACS,vectPACS,i00,year)
#write.table(M06,file ="M2006.csv")

load("PACS2007.RData")
M07 = CrearMatriz(8,PACS)
list[vectPACS,i00,year] = CrearVector('2007',PACS,vectPACS,i00,year)
#write.table(M07,file ="M2007.csv")

load("PACS2008.RData")
M08 = CrearMatriz(9,PACS)
list[vectPACS,i00,year] = CrearVector('2008',PACS,vectPACS,i00,year)
#write.table(M08,file ="M2008.csv")

load("PACS2009.RData")
M09 = CrearMatriz(10,PACS)
list[vectPACS,i00,year] = CrearVector('2009',PACS,vectPACS,i00,year)
#write.table(M09,file ="M2009.csv")

load("PACS2010.RData")
M10 = CrearMatriz(11,PACS)
list[vectPACS,i00,year] = CrearVector('2010',PACS,vectPACS,i00,year)
#write.table(M10,file ="M2010.csv")

load("PACS2011.RData")
M11 = CrearMatriz(12,PACS)
list[vectPACS,i00,year] = CrearVector('2011',PACS,vectPACS,i00,year)
#write.table(M11,file ="M2011.csv")

load("PACS2012.RData")
M12 = CrearMatriz(13,PACS)
list[vectPACS,i00,year] = CrearVector('2012',PACS,vectPACS,i00,year)
#write.table(M12,file ="M2012.csv")

load("PACS2013.RData")
M13 = CrearMatriz(14,PACS)
list[vectPACS,i00,year] = CrearVector('2013',PACS,vectPACS,i00,year)
#write.table(M13,file ="M2013.csv")

length(vectPACS)
length(year)
length(i00)

dPACS <- list(vectPACS,year,i00)
names(dPACS) <- c('pacs','date','num')
save(dPACS, file = "vectorPACS.RData")



Matrices <- list(M00,M01,M02,M03,M04,M05,M06,M07,M08,M09,M10,M11,M12,M13)
names(Matrices) <- c("M00","M01","M02","M03","M04","M05","M06","M07","M08","M09","M10","M11","M12","M13")
save(Matrices, file = "Matrices.RData")

#load("Matrices.RData")
#Matrices$M00[1,2]
#View(Matrices$M00)

