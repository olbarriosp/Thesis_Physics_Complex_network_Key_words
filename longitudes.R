#setwd("c:/Users/Olga/Dropbox/NetworksTesis/Programa/aps-dataset-metadata-2013/")

## determinar la longitud mas larga para hacer tabla:
Longitud  = function(X){
aux = 0
for ( i in 1:length(X$pacs)){
    if(aux < length(X$pacs[[i]]))
      { aux = length(X$pacs[[i]])}  
    }
  return(aux)
}

load("PACS2000.RData")
aux0 = Longitud(PACS)
load("PACS2001.RData")
aux1 = Longitud(PACS)
load("PACS2002.RData")
aux2 = Longitud(PACS)
load("PACS2003.RData")
aux3 = Longitud(PACS)
load("PACS2004.RData")
aux4 = Longitud(PACS)
load("PACS2005.RData")
aux5 = Longitud(PACS)
load("PACS2006.RData")
aux6 = Longitud(PACS)
load("PACS2007.RData")
aux7 = Longitud(PACS)
load("PACS2008.RData")
aux8 = Longitud(PACS)
load("PACS2009.RData")
aux9 = Longitud(PACS)
load("PACS2010.RData")
aux10 = Longitud(PACS)
load("PACS2011.RData")
aux11 = Longitud(PACS)
load("PACS2012.RData")
aux12 = Longitud(PACS)
load("PACS2013.RData")
aux13 = Longitud(PACS)

Longitudes <- list(aux0,aux1,aux2,aux3,aux4,aux5,aux6,aux7,aux8,aux9,aux10,aux11,aux12,aux13)
save(Longitudes, file = "longitudesPACS.RData")