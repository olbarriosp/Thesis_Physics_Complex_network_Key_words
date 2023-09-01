rm(list =ls ())
#2. Clasificar por los que tienen PACS-------
source('C:/Users/Olga/Dropbox/NetworksTesis/Programa/aps-dataset-metadata-2013/Originales/PreProcesamiento/PrimerPACS.r')
directorio = 'C:/Users/Olga/Dropbox/NetworksTesis/Programa/aps-dataset-metadata-2013/Originales/'
load(paste0(directorio,"PRA.RData"))
XPACS = ClasifPACS(PRA)
#save(XPACS,file = "PRApacs.RData")
length(XPACS$num)
length(XPACS$pacs)
XPACS$date[[1]]
rm(XPACS)


load("./PRrdata/PRB.RData")
XPACS = ClasifPACS(PRB)
save(XPACS,file = "PRBpacs.RData")
rm(XPACS)


load("./PRrdata/PRC.RData")
XPACS = ClasifPACS(PRC)
save(XPACS,file = "PRCpacs.RData")
rm(XPACS)


load("./PRrdata/PRD.RData")
XPACS = ClasifPACS(PRD)
save(XPACS,file = "PRDpacs.RData")
rm(XPACS)


load("./PRrdata/PRE.RData")
XPACS = ClasifPACS(PRE)
save(XPACS,file = "PREpacs.RData")
rm(XPACS)


load("./PRrdata/PRI.RData")#NO TIENE PACS
XPACS = ClasifPACS(PRI)
save(XPACS,file = "PRIpacs.RData")
rm(XPACS)


load("./PRrdata/PRL.RData") 
XPACS = ClasifPACS(PRL)
save(XPACS,file = "PRLpacs.RData")
rm(XPACS)


load("./PRrdata/PRX.RData")
XPACS = ClasifPACS(PRX)
save(XPACS,file = "PRXpacs.RData")
rm(XPACS)


load("./PRrdata/PRSTPER.RData")
XPACS = ClasifPACS(PRSTPER)
save(XPACS,file = "PRSTPERpacs.RData")
rm(XPACS)


load("./PRrdata/PRSTAB.RData")
XPACS = ClasifPACS(PRSTAB)
save(XPACS,file = "PRSTABpacs.RData")
rm(XPACS)


#3.Clasificar por año------------------------

source('C:/Users/Olga/Dropbox/NetworksTesis/Programa/aps-dataset-metadata-2013/guardarPACSdate.r')

#3.1 clasifica y organiza por meses-----------
source('C:/Users/Olga/Dropbox/NetworksTesis/Programa/aps-dataset-metadata-2013/Organizar.R')

#4.Matrices con PACS -año------------
#crea vector de longitudes
source('C:/Users/Olga/Dropbox/NetworksTesis/Programa/aps-dataset-metadata-2013/longitudes.R')
#crea e imprime matrices con PACS
source('C:/Users/Olga/Dropbox/NetworksTesis/Programa/aps-dataset-metadata-2013/crearMatricesDate.R')

#5. Continua Analisis con MATLAB

