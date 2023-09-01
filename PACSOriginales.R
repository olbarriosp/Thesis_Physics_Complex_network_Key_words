#install.packages("pdftables") #leer a pdf
#install.packages("readxl") #leer xls/xlsx
setwd('c:/Users/Olga/Dropbox/NetworksTesis/Programa/aps-dataset-metadata-2013/ProcesamientoR/')
my_data <- read.csv("TodosPACS.csv",sep = '\t')
class(my_data)
names(my_data)
#View(my_data)

PACS <- my_data$X1st.code
class(PACS)
PACS <- as.character(PACS)

nombre <- list()
Palab <- list()
for(i in 1:length(PACS)){
  txt <- PACS[i]
  #txt
  div <- strsplit(txt, split=", ") #divide en palabras
  #print(length(div[[1]]))
  if(length(div[[1]]) > 1){
    #print(PACS[i])
    for(j in 2:length(div[[1]])){
      nombre[length(nombre)+1] <- div[[1]][1]
      Palab[length(Palab) + 1] <- div[[1]][[j]]
    }
  }
}
Palab[1]
nombre[1]
total <- list(Palab,nombre)
names(total) <- c('Palab','nombre')

save(total,file ='PACS.RData')

#PACS-----------------------------

Pacs = read.csv('PACStotales.csv',sep ='\t',header = T)
Pacs = lapply(Pacs, as.character)
class(Pacs$PACS)
head(Pacs$PACS)

save(Pacs,file ='PACS.RData')

#----GRUPO PARA PACS-----------------
grupoPacs = read.csv('PACSnombresgrupos.csv')
class(grupoPacs)
grupoPacs <- sapply(grupoPacs,as.character)


nombre <- c()
Palab <- c()
for(i in 1:length(grupoPacs)){
  if(gregexpr(pattern ='—',grupoPacs[[i]])[[1]][1] == -1 ){
    div <- strsplit(grupoPacs[[i]], split=" ")
    nombre[length(nombre) + 1] <- div[[1]][1]
    aa  = div[[1]][2]
    if(length(div[[1]])>2){
      for(j in 3:length(div[[1]])){aa = paste(aa, div[[1]][j] , sep = ' ') }
    }
    Palab[length(Palab) + 1] <- aa
  }
  else{
    div <- strsplit(grupoPacs[[i]], split="—")
    nombre[length(nombre) + 1] <- paste0(div[[1]][1],'.')
    aa  = div[[1]][2]
    if(length(div[[1]])>2){
      for(j in 3:length(div[[1]])){ aa = paste(aa, div[[1]][j] , sep = ' ')}
    }
    Palab[length(Palab) + 1] <- aa
  }
}

PACSgrupo <- list(Palab,nombre)
names(PACSgrupo) <- c('Palab','nombre')
save(PACSgrupo, file = 'PACSgrupo.RData')
#nombre
#Palab
#length(Palab)
#length(nombre)
#length(grupoPacs)



#revisar------------

