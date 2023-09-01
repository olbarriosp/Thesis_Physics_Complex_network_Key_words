 ## y con guardarPACSdate.r
X <- XPACS
conta0 <- 0
conta1<- 0
conta2<- 0
conta3<- 0
conta4<- 0
conta5<- 0
conta6<- 0
conta7<- 0
conta8<- 0
conta9<- 0
conta10<- 0
conta11<- 0
conta12<- 0
conta13<- 0
for (i in 1:length(X$pacs)){
  CC = gregexpr(pattern ='2000',X$date[[i]])[[1]][1]
  if ( CC == 1){
    conta0 = conta0 + 1
    A2000[length(A2000)+1] <- list(X$pacs[[i]])
    I2000[length(I2000)+1] <- list(X$review[[i]][[1]])
    R2000[length(R2000)+1] <- list(X$title[[i]][[1]])
    D2000[length(D2000)+1] <- c(format(as.Date(X$date[[i]][[1]]),'%d/%m/%Y'))
  }
  DD = gregexpr(pattern ='2001',X$date[[i]])[[1]][1]
  if ( DD == 1){
    conta1 = conta1 + 1
    A2001[length(A2001)+1] <- list(X$pacs[[i]])
    I2001[length(I2001)+1] <- list(X$review[[i]][[1]])
    R2001[length(R2001)+1] <- list(X$title[[i]][[1]])
    D2001[length(D2001)+1] <- c(format(as.Date(X$date[[i]][[1]]),'%d/%m/%Y'))
  }
  EE = gregexpr(pattern ='2002',X$date[[i]])[[1]][1]
  if ( EE == 1){
    conta2 = conta2 + 1
    A2002[length(A2002)+1] <- list(X$pacs[[i]])
    I2002[length(I2002)+1] <- list(X$review[[i]][[1]])
    R2002[length(R2002)+1] <- list(X$title[[i]][[1]])
    D2002[length(D2002)+1] <- c(format(as.Date(X$date[[i]][[1]]),'%d/%m/%Y'))
  }
  FF = gregexpr(pattern ='2003',X$date[[i]])[[1]][1]
  if ( FF == 1){
    conta3 = conta3 + 1
    A2003[length(A2003)+1] <- list(X$pacs[[i]])
    I2003[length(I2003)+1] <- list(X$review[[i]][[1]])
    R2003[length(R2003)+1] <- list(X$title[[i]][[1]])
    D2003[length(D2003)+1] <- c(format(as.Date(X$date[[i]][[1]]),'%d/%m/%Y'))
  }
  GG = gregexpr(pattern ='2004',X$date[[i]])[[1]][1]
  if ( GG == 1){
    conta4 = conta4 + 1
    A2004[length(A2004)+1] <- list(X$pacs[[i]])
    I2004[length(I2004)+1] <- list(X$review[[i]][[1]])
    R2004[length(R2004)+1] <- list(X$title[[i]][[1]])
    D2004[length(D2004)+1] <- c(format(as.Date(X$date[[i]][[1]]),'%d/%m/%Y'))
  }
  HH = gregexpr(pattern ='2005',X$date[[i]])[[1]][1]
  if ( HH == 1){
    conta5 = conta5 + 1
    A2005[length(A2005)+1] <- list(X$pacs[[i]])
    I2005[length(I2005)+1] <- list(X$review[[i]][[1]])
    R2005[length(R2005)+1] <- list(X$title[[i]][[1]])
    D2005[length(D2005)+1] <- c(format(as.Date(X$date[[i]][[1]]),'%d/%m/%Y'))
  }
  JJ = gregexpr(pattern ='2006',X$date[[i]])[[1]][1]
  if ( JJ == 1){
    conta6 = conta6 + 1
    A2006[length(A2006)+1] <- list(X$pacs[[i]])
    I2006[length(I2006)+1] <- list(X$review[[i]][[1]])
    R2006[length(R2006)+1] <- list(X$title[[i]][[1]])
    D2006[length(D2006)+1] <- c(format(as.Date(X$date[[i]][[1]]),'%d/%m/%Y'))
  }
  KK = gregexpr(pattern ='2007',X$date[[i]])[[1]][1]
  if ( KK == 1){
    conta7 = conta7 + 1
    A2007[length(A2007)+1] <- list(X$pacs[[i]])
    I2007[length(I2007)+1] <- list(X$review[[i]][[1]])
    R2007[length(R2007)+1] <- list(X$title[[i]][[1]])
    D2007[length(D2007)+1] <- c(format(as.Date(X$date[[i]][[1]]),'%d/%m/%Y'))
  }
  LL = gregexpr(pattern ='2008',X$date[[i]])[[1]][1]
  if ( LL == 1){
    conta8 = conta8 + 1
    A2008[length(A2008)+1] <- list(X$pacs[[i]])
    I2008[length(I2008)+1] <- list(X$review[[i]][[1]])
    R2008[length(R2008)+1] <- list(X$title[[i]][[1]])
    D2008[length(D2008)+1] <- c(format(as.Date(X$date[[i]][[1]]),'%d/%m/%Y'))
  }
  MM = gregexpr(pattern ='2009',X$date[[i]])[[1]][1]
  if ( MM == 1){
    conta9 = conta9 + 1
    A2009[length(A2009)+1] <- list(X$pacs[[i]])
    I2009[length(I2009)+1] <- list(X$review[[i]][[1]])
    R2009[length(R2009)+1] <- list(X$title[[i]][[1]])
    D2009[length(D2009)+1] <- c(format(as.Date(X$date[[i]][[1]]),'%d/%m/%Y'))
  }
  NN = gregexpr(pattern ='2010',X$date[[i]])[[1]][1]
  if ( NN == 1){
    conta10 = conta10 + 1
    A2010[length(A2010)+1] <- list(X$pacs[[i]])
    I2010[length(I2010)+1] <- list(X$review[[i]][[1]])
    R2010[length(R2010)+1] <- list(X$title[[i]][[1]])
    D2010[length(D2010)+1] <- c(format(as.Date(X$date[[i]][[1]]),'%d/%m/%Y'))
  }
  OO = gregexpr(pattern ='2011',X$date[[i]])[[1]][1]
  if ( OO == 1){
    conta11 = conta11 + 1
    A2011[length(A2011)+1] <- list(X$pacs[[i]])
    I2011[length(I2011)+1] <- list(X$review[[i]][[1]])
    R2011[length(R2011)+1] <- list(X$title[[i]][[1]])
    D2011[length(D2011)+1] <- c(format(as.Date(X$date[[i]][[1]]),'%d/%m/%Y'))
  }
  PP = gregexpr(pattern ='2012',X$date[[i]])[[1]][1]
  if ( PP == 1){
    conta12 = conta12 + 1
    A2012[length(A2012)+1] <- list(X$pacs[[i]])
    I2012[length(I2012)+1] <- list(X$review[[i]][[1]])
    R2012[length(R2012)+1] <- list(X$title[[i]][[1]])
    D2012[length(D2012)+1] <- c(format(as.Date(X$date[[i]][[1]]),'%d/%m/%Y'))
  }
  QQ = gregexpr(pattern ='2013',X$date[[i]])[[1]][1]
  if ( QQ == 1){
    conta13 = conta13 + 1
    A2013[length(A2013)+1] <- list(X$pacs[[i]])
    I2013[length(I2013)+1] <- list(X$review[[i]][[1]])
    R2013[length(R2013)+1] <- list(X$title[[i]][[1]])
    D2013[length(D2013)+1] <- c(format(as.Date(X$date[[i]][[1]]),'%d/%m/%Y'))
  }
}



