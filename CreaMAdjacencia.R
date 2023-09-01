#-----------------------------------------------------
#Programa que crea las matrices de Adjacencia para cada uno de los años
# input:
# output: MatricesAd.RData
#-----------------------------------------------------

load('Matrices.RData')
#library(Matrix)
CrearPar = function(MM){
aa = dim(MM)
MMM <- matrix(ncol = 3)
MMM[1,1] <- 'Source'
MMM[1,2] <- 'Target'
MMM[1,3] <- 'Fila'
# 1. pongalo de a parejas:
for(kk in 1:aa[1]){
b = aa[2]-1
 for(i in 1:b){ #barre filas
   #while(j < aa[2])
  for(j in (i+1):b){
     # print(MM[kk,j])
      if(is.na(MM[kk,i]) == FALSE & is.na(MM[kk,j]) == FALSE){
        if( MM[kk,i] != MM[kk,j]){
         MMM <- rbind(MMM,c(MM[kk,i],MM[kk,j],kk))  
        }
      }
    }
 }
}
return(MMM)
}

##Llamar la funcion
P00 = CrearPar(Matrices$M00)
P01 = CrearPar(Matrices$M01)
P02 = CrearPar(Matrices$M02)
P03 = CrearPar(Matrices$M03)
P04 = CrearPar(Matrices$M04)
P05 = CrearPar(Matrices$M05)
P06 = CrearPar(Matrices$M06)
P07 = CrearPar(Matrices$M07)
P08 = CrearPar(Matrices$M08)
P09 = CrearPar(Matrices$M09)
P10 = CrearPar(Matrices$M10)
P11 = CrearPar(Matrices$M11)
P12 = CrearPar(Matrices$M12)
P13 = CrearPar(Matrices$M13)

Parejas <- list(P00,P01,P02,P03,P04,P05,P06,P07,P08,P09,P10,P11,P12,P13)
names(Parejas) <- c('P00','P01','P02','P03','P04','P05','P06','P07','P08','P09','P10','P11','P12','P13')
save(Parejas, file = 'Parejas.RData')

#2. m. ADJACENCIA-----------------------
load('vectorPACS.RData')
load('Parejas.RData')

library(gsubfn) #input 2 in fuction

MatrzAdja = function(MMM,dPac,date){
  #dPac = dPACS
  #MMM = P01
  #date= '2001'
  aa = dim(MMM)
  NN = max(which(!is.na(match(dPac$date,date)) == TRUE))
  AA = matrix(nrow = NN,ncol = NN,0) #Adjacencia
  for(i in 2:aa[1]){
    ap = match(MMM[i,1],dPac$pacs)
    dp = match(MMM[i,2],dPac$pacs)
    #if(ap > dp){ AA[ap,dp] = AA[ap,dp] + 1 }
    #else{AA[dp,ap] = AA[dp,ap] + 1}
    AA[ap,dp] = AA[ap,dp] + 1
    AA[dp,ap] = AA[dp,ap] + 1
    }
   rownames(AA) <- dPac$pacs[c(1:NN)]
   colnames(AA) <- dPac$pacs[c(1:NN)]
  return(AA)
}

#F00 = MatrzAdja(Parejas$P00,dPACS,'2000')

#A00 = MatrzAdja(P00,dPACS,'2000')
#A01 = MatrzAdja(P01,dPACS,'2001')
#A02 = MatrzAdja(P02,dPACS,'2002')
#A03 = MatrzAdja(P03,dPACS,'2003')
#Adj03 <- list(A00,A01,A02,A03 )
#names(Adj03) <- c('A00','A01','A02','A03')
#save(Adj03,file = 'Adj03.RData')
#rm(P00,P01,p02,P03,A00,A01,A02,A03,Adj03)


#A04 = MatrzAdja(P04,dPACS,'2004')
#A05 = MatrzAdja(P05,dPACS,'2005')
#A06 = MatrzAdja(P06,dPACS,'2006')
#A07 = MatrzAdja(P07,dPACS,'2007')
#Adj47 <- list(A04,A05,A06,A07)
#names(Adj47) <- c('A04','A05','A06','A07')
#save(Adj47,file = 'Adj47.RData')
#rm(P04,P05,P06,P07,A04,A05,A06,A07,Adj47)


#A08 = MatrzAdja(P08,dPACS,'2008')
#A09 = MatrzAdja(P09,dPACS,'2009')
#A10 = MatrzAdja(P10,dPACS,'2010')
#A11 = MatrzAdja(P11,dPACS,'2011')
#Adj811 <- list(A08,A09,A10,A11)
#names(Adj811) <- c('A08','A09','A10','A11')
#save(Adj811,file = 'Adj811.RData')
#rm(P08,P09,P10,P11,A08,A09,A10,A11,Adj811)

#A12 = MatrzAdja(P12,dPACS,'2012')
#A13 = MatrzAdja(P13,dPACS,'2013')
#Adj1213 <- list(A12,A13)
#names(Adj1213) <- c('A12','A13')
#save(Adj1213,file = 'Adj1213.RData')
#rm(P12,P13,A12,A13,Adj1213)

#isSymmetric(A04)


## M. BINARIA------------------------------------------------------------

load('vectorPACS.RData')
library(gsubfn) #input 2 in fuction

MatrzAdja = function(MMM,dPac){
  NN = ncol(MMM)
  #BB = matrix(nrow = NN,ncol = NN,0) #Binaria
  DD = matrix(nrow = NN,ncol = NN,0) #Fortaleza
  for(i in 1:NN)
     for(j in i:NN){
       #if(MMM[i,j]!= 0){
         #BB[i,j] = 1
         DD[i,j] = MMM[i,j]
       #}
     }
  }
  rownames(DD) <- dPac$pacs[c(1:NN)]
  colnames(DD) <- dPac$pacs[c(1:NN)]
  #rownames(BB) <- dPac$pacs[c(1:NN)]
  #colnames(BB) <- dPac$pacs[c(1:NN)]
  return(DD)
  #return(list(BB,DD))
}


#load('Adj03.RData')
F00 = MatrzAdja(Adj03$A00,dPACS)
F01 = MatrzAdja(Adj03$A01,dPACS)
F02 = MatrzAdja(Adj03$A02,dPACS)
F03 = MatrzAdja(Adj03$A03,dPACS)

load('Adj47.RData')
F04 = MatrzAdja(Adj47$A04,dPACS)
F05 = MatrzAdja(Adj47$A05,dPACS)
F06 = MatrzAdja(Adj47$A06,dPACS)
F07 = MatrzAdja(Adj47$A07,dPACS)

load('Adj811.RData')
F08 = MatrzAdja(Adj811$A08,dPACS)
F09 = MatrzAdja(Adj811$A09,dPACS)
F10 = MatrzAdja(Adj811$A10,dPACS)
F11 = MatrzAdja(Adj811$A11,dPACS)

load('Adj1213.RData')
F12 = MatrzAdja(Adj1213$A12,dPACS)
F13 = MatrzAdja(Adj1213$A13,dPACS)

MF05<- list(F00,F01,F02,F03,F04,F05)
names(MF05) <- c('F00','F01','F02','F03','F04','F05')
save(MF05, file = 'MForteleza05.RData')

MF613 <-list(F06,F07,F08,F09,F10,F11,F12,F13)
names(MF613) <- c('F06','F07','F08','F09','F10','F11','F12','F13')
save(MF613, file = 'MFortaleza613.RData')
#rm(B00,B01,B03,B04,B05,F00,F01,F02,F03,F04,F05)














