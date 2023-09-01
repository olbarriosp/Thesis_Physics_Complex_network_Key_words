{
A2000 <- list()
I2000 <- list()
R2000 <- list()
D2000 <- c()

A2001 <- list()
I2001 <- list()
R2001 <- list()
D2001 <- c()

A2002 <- list()
I2002 <- list()
R2002 <- list()
D2002 <- c()

A2003 <- list()
I2003 <- list()
R2003 <- list()
D2003 <- c()

A2004 <- list()
I2004 <- list()
R2004 <- list()
D2004 <- c()

A2005 <- list()
I2005 <- list()
R2005 <- list()
D2005 <- c()

A2006 <- list()
I2006 <- list()
R2006 <- list()
D2006 <- c()

A2007 <- list()
I2007 <- list()
R2007 <- list()
D2007 <- c()

A2008 <- list()
I2008 <- list()
R2008 <- list()
D2008 <- c()

A2009 <- list()
I2009 <- list()
R2009 <- list()
D2009 <- c()

A2010 <- list()
I2010 <- list()
R2010 <- list()
D2010 <- c()

A2011 <- list()
I2011 <- list()
R2011 <- list()
D2011 <- c()

A2012 <- list()
I2012 <- list()
R2012 <- list()
D2012 <- c()

A2013 <- list()
I2013 <- list()
R2013 <- list()
D2013 <- c()


direct = 'C:/Users/Olga/Dropbox/NetworksTesis/Programa/aps-dataset-metadata-2013/Originales/PreProcesamiento/'
load(paste0(direct,"PRApacs.RData"))
source('C:/Users/Olga/Dropbox/NetworksTesis/Programa/aps-dataset-metadata-2013/datePACS.r')
rm(XPACS)
load("PRBpacs.RData")
source('C:/Users/Olga/Dropbox/NetworksTesis/Programa/aps-dataset-metadata-2013/datePACS.r')
rm(XPACS)
load("PRCpacs.RData")
source('C:/Users/Olga/Dropbox/NetworksTesis/Programa/aps-dataset-metadata-2013/datePACS.r')
rm(XPACS)
load("PRDpacs.RData")
source('C:/Users/Olga/Dropbox/NetworksTesis/Programa/aps-dataset-metadata-2013/datePACS.r')
rm(XPACS)
load("PREpacs.RData")
source('C:/Users/Olga/Dropbox/NetworksTesis/Programa/aps-dataset-metadata-2013/datePACS.r')
rm(XPACS)
load("PRLpacs.RData")
source('C:/Users/Olga/Dropbox/NetworksTesis/Programa/aps-dataset-metadata-2013/datePACS.r')
rm(XPACS)
load("PRXpacs.RData")
source('C:/Users/Olga/Dropbox/NetworksTesis/Programa/aps-dataset-metadata-2013/datePACS.r')
rm(XPACS)
load("PRSTPERpacs.RData")
source('C:/Users/Olga/Dropbox/NetworksTesis/Programa/aps-dataset-metadata-2013/datePACS.r')
rm(XPACS)
load("PRSTABpacs.RData")
source('C:/Users/Olga/Dropbox/NetworksTesis/Programa/aps-dataset-metadata-2013/datePACS.r')
rm(XPACS)
}
##guardar data date ---------------------

PACS2000<- list(A2000,I2000,R2000,D2000)
names(PACS2000) <- c("pacs","review","title","date")
save(PACS2000, file ="PACS2000.RData")

PACS2001<- list(A2001,I2001,R2001,D2001)
names(PACS2001) <- c("pacs","review","title","date")
save(PACS2001, file ="PACS2001.RData")


PACS2002<- list(A2002,I2002,R2002,D2002)
names(PACS2002) <- c("pacs","review","title","date")
save(PACS2002, file ="PACS2002.RData")


PACS2003 <- list(A2003,I2003,R2003,D2003)
names(PACS2003) <- c("pacs","review","title","date")
save(PACS2003, file ="PACS2003.RData")


PACS2004<- list(A2004,I2004,R2004,D2004)
names(PACS2004) <- c("pacs","review","title","date")
save(PACS2004, file ="PACS2004.RData")


PACS2005 <- list(A2005,I2005,R2005,D2005)
names(PACS2005) <- c("pacs","review","title","date")
save(PACS2005, file ="PACS2005.RData")


PACS2006<- list(A2006,I2006,R2006,D2006)
names(PACS2006) <- c("pacs","review","title","date")
save(PACS2006, file ="PACS2006.RData")


PACS2007<- list(A2007,I2007,R2007,D2007)
names(PACS2007) <- c("pacs","review","title","date")
save(PACS2007, file ="PACS2007.RData")

PACS2008 <- list(A2008,I2008,R2008,D2008)
names(PACS2008) <- c("pacs","review","title","date")
save(PACS2008, file ="PACS2008.RData")

PACS2009<- list(A2009,I2009,R2009,D2009)
names(PACS2009) <- c("pacs","review","title","date")
save(PACS2009, file ="PACS2009.RData")

PACS2010<- list(A2010,I2010,R2010,D2010)
names(PACS2010) <- c("pacs","review","title","date")
save(PACS2010, file ="PACS2010.RData")


PACS2011<- list(A2011,I2011,R2011,D2011)
names(PACS2011) <- c("pacs","review","title","date")
save(PACS2011, file ="PACS2011.RData")

PACS2012<- list(A2012,I2012,R2012,D2012)
names(PACS2012) <- c("pacs","review","title","date")
save(PACS2012, file ="PACS2012.RData")

PACS2013<- list(A2013,I2013,R2013,D2013)
names(PACS2013) <- c("pacs","review","title","date")
save(PACS2013, file ="PACS2013.RData")
