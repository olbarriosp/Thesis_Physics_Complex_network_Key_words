

Organizar = function(X){
A2000 <- list()
I2000 <- list()
R2000 <- list()
D2000 <- list()
A <- order(as.Date(X$date, format = "%d/%m/%Y"))
for (i in 1:length(A)){
  A2000[i] <- list(X$pacs[[A[i]]])
  I2000[i] <- list(X$review[[A[i]]][[1]])
  R2000[i] <- list(X$title[[A[i]]][[1]])
  D2000[i] <- list(X$date[[A[i]]][[1]])
}

PACS<- list(A2000,I2000,R2000,D2000)
names(PACS) <- c("pacs","review","title","date")
return(PACS)
}

load('PACS2000.RData')
XX <- PACS2000
rm(PACS2000)
PACS= Organizar(XX)
save(PACS, file ="PACS2000.RData")


load('PACS2001.RData')
XX <- PACS2001
rm(PACS2001)
PACS= Organizar(XX)
save(PACS, file ="PACS2001.RData")



load('PACS2002.RData')
XX <- PACS2002
rm(PACS2002)
PACS= Organizar(XX)
save(PACS, file ="PACS2002.RData")


load('PACS2003.RData')
XX <- PACS2003
rm(PACS2003)
PACS= Organizar(XX)
save(PACS, file ="PACS2003.RData")


load('PACS2004.RData')
XX <- PACS2004
rm(PACS2004)
PACS= Organizar(XX)
save(PACS, file ="PACS2004.RData")


load('PACS2005.RData')
XX <- PACS2005
rm(PACS2005)
PACS= Organizar(XX)
save(PACS, file ="PACS2005.RData")


load('PACS2006.RData')
XX <- PACS2006
rm(PACS2006)
PACS= Organizar(XX)
save(PACS, file ="PACS2006.RData")


load('PACS2007.RData')
XX <- PACS2007
rm(PACS2007)
PACS= Organizar(XX)
save(PACS, file ="PACS2007.RData")


load('PACS2008.RData')
XX <- PACS2008
rm(PACS2008)
PACS= Organizar(XX)
save(PACS, file ="PACS2008.RData")

load('PACS2009.RData')
XX <- PACS2009
rm(PACS2009)
PACS= Organizar(XX)
save(PACS, file ="PACS2009.RData")

load('PACS2010.RData')
XX <- PACS2010
rm(PACS2010)
PACS= Organizar(XX)
save(PACS, file ="PACS2010.RData")

load('PACS2011.RData')
XX <- PACS2011
rm(PACS2011)
PACS= Organizar(XX)
save(PACS, file ="PACS2011.RData")

load('PACS2012.RData')
XX <- PACS2012
rm(PACS2012)
PACS= Organizar(XX)
save(PACS, file ="PACS2012.RData")

load('PACS2013.RData')
XX <- PACS2013
rm(PACS2013)
PACS= Organizar(XX)
save(PACS, file ="PACS2013.RData")










