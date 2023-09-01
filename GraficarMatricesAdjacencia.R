#------------------------------------
# Programa que detemina la funcion de distribución (F.D.)de Grado y de fortaleza
# F. D. y F. D. Acumulada
#------------------------------------
load('Adj03.RData')
source('C:/Users/Olga/Dropbox/NetworksTesis/Programa/aps-dataset-metadata-2013/ProcesamientoR/Multiplot.R')
library(ggplot2)
library(grid)
library(gridExtra)
library(reshape2) #permite hacer las parejas

melted_cormat <- melt(Adj03$A00) #vuelve parejas.
head(melted_cormat)
p0 <-ggplot(melted_cormat[melted_cormat$value > 1,],aes(x = Var1, y = Var2)) + #fill = value
  #geom_raster() #muestra puntos
  geom_point(alpha = 1/10)+  #muestra los niveles
  #geom_jitter()+ #muestra labarra
  scale_x_discrete('PACS',breaks = c("I1", "SI2", "SI1")) +
  scale_y_discrete('PACS',breaks = c("I1", "SI2", "SI1")) +
  theme_classic()  + #muestra que sea con lineas
  ggtitle(" PACS 2000") +
  theme(legend.position="none")

melted_cormat <- melt(Adj03$A01) #vuelve parejas.
head(melted_cormat)

p1 <-ggplot(melted_cormat[melted_cormat$value > 1,],aes(x = Var1, y = Var2)) + #fill = value
  #geom_raster() #muestra puntos
  geom_point(alpha = 1/10)+  #muestra los niveles
  #geom_jitter()+ #muestra labarra
  scale_x_discrete('PACS',breaks = c("I1", "SI2", "SI1")) +
  scale_y_discrete('PACS',breaks = c("I1", "SI2", "SI1")) +
  theme_classic() + #muestra que sea con lineas
  ggtitle(" PACS 2001") +
  theme(legend.position="none")

melted_cormat <- melt(Adj03$A02) #vuelve parejas.
head(melted_cormat)
p2 <-ggplot(melted_cormat[melted_cormat$value > 1,],aes(x = Var1, y = Var2)) + #fill = value
  #geom_raster() #muestra puntos
  geom_point(alpha = 1/10)+  #muestra los niveles
  #geom_jitter()+ #muestra labarra
  scale_x_discrete('PACS',breaks = c("I1", "SI2", "SI1")) +
  scale_y_discrete('PACS',breaks = c("I1", "SI2", "SI1")) +
  theme_classic()  + #muestra que sea con lineas
  ggtitle(" PACS 2002") +
  theme(legend.position="none")

melted_cormat <- melt(Adj03$A03) #vuelve parejas.
head(melted_cormat)
p3 <-ggplot(melted_cormat[melted_cormat$value > 1,],aes(x = Var1, y = Var2)) + #fill = value
  #geom_raster() #muestra puntos
  geom_point(alpha = 1/10)+  #muestra los niveles
  #geom_jitter()+ #muestra labarra
  scale_x_discrete('PACS',breaks = c("I1", "SI2", "SI1")) +
  scale_y_discrete('PACS',breaks = c("I1", "SI2", "SI1")) +
  theme_classic() + #muestra que sea con lineas
  ggtitle(" PACS 2003") +
  theme(legend.position="none")  # No legend (redundant in this graph)   

multiplot(p0, p1, p2, p3,cols=2)


##Plot con niveles ----------
#library(reshape2)
#melted_cormat <- melt(Adj03$A00) #vuelve parejas.
#head(melted_cormat)
#ggplot(data = melted_cormat, aes(x=Var1, y=Var2, fill=value), fill=value) + 
#geom_tile()


##Plot Basico-------
#library(Matrix)
#image(Adj03$A00)

load('Adj47.RData')

melted_cormat <- melt(Adj47$A04) #vuelve parejas.
head(melted_cormat)
p0 <-ggplot(melted_cormat[melted_cormat$value > 1,],aes(x = Var1, y = Var2)) + #fill = value
  #geom_raster() #muestra puntos
  geom_point(alpha = 1/10)+  #muestra los niveles
  #geom_jitter()+ #muestra labarra
  scale_x_discrete('PACS',breaks = c("I1", "SI2", "SI1")) +
  scale_y_discrete('PACS',breaks = c("I1", "SI2", "SI1")) +
  theme_classic()  + #muestra que sea con lineas
  ggtitle(" PACS 2004") +
  theme(legend.position="none")

melted_cormat <- melt(Adj47$A05) #vuelve parejas.
head(melted_cormat)

p1 <-ggplot(melted_cormat[melted_cormat$value > 1,],aes(x = Var1, y = Var2)) + #fill = value
  #geom_raster() #muestra puntos
  geom_point(alpha = 1/10)+  #muestra los niveles
  #geom_jitter()+ #muestra labarra
  scale_x_discrete('PACS',breaks = c("I1", "SI2", "SI1")) +
  scale_y_discrete('PACS',breaks = c("I1", "SI2", "SI1")) +
  theme_classic() + #muestra que sea con lineas
  ggtitle(" PACS 2005") +
  theme(legend.position="none")

melted_cormat <- melt(Adj47$A06) #vuelve parejas.
head(melted_cormat)
p2 <-ggplot(melted_cormat[melted_cormat$value > 1,],aes(x = Var1, y = Var2)) + #fill = value
  #geom_raster() #muestra puntos
  geom_point(alpha = 1/10)+  #muestra los niveles
  #geom_jitter()+ #muestra labarra
  scale_x_discrete('PACS',breaks = c("I1", "SI2", "SI1")) +
  scale_y_discrete('PACS',breaks = c("I1", "SI2", "SI1")) +
  theme_classic()  + #muestra que sea con lineas
  ggtitle(" PACS 2006") +
  theme(legend.position="none")

melted_cormat <- melt(Adj47$A07) #vuelve parejas.
head(melted_cormat)
p3 <-ggplot(melted_cormat[melted_cormat$value > 1,],aes(x = Var1, y = Var2)) + #fill = value
  #geom_raster() #muestra puntos
  geom_point(alpha = 1/10)+  #muestra los niveles
  #geom_jitter()+ #muestra labarra
  scale_x_discrete('PACS',breaks = c("I1", "SI2", "SI1")) +
  scale_y_discrete('PACS',breaks = c("I1", "SI2", "SI1")) +
  theme_classic() + #muestra que sea con lineas
  ggtitle(" PACS 2007") +
  theme(legend.position="none")  # No legend (redundant in this graph)   

multiplot(p0, p1, p2, p3,cols=2)


##-------------------------------------------
load('Adj811.RData')

melted_cormat <- melt(Adj811$A08) #vuelve parejas.
head(melted_cormat)
p0 <-ggplot(melted_cormat[melted_cormat$value > 1,],aes(x = Var1, y = Var2)) + #fill = value
  #geom_raster() #muestra puntos
  geom_point(alpha = 1/10)+  #muestra los niveles
  #geom_jitter()+ #muestra labarra
  scale_x_discrete('PACS',breaks = c("I1", "SI2", "SI1")) +
  scale_y_discrete('PACS',breaks = c("I1", "SI2", "SI1")) +
  theme_classic()  + #muestra que sea con lineas
  ggtitle(" PACS 2008") +
  theme(legend.position="none")

melted_cormat <- melt(Adj811$A09) #vuelve parejas.
head(melted_cormat)
p1 <-ggplot(melted_cormat[melted_cormat$value > 1,],aes(x = Var1, y = Var2)) + #fill = value
  #geom_raster() #muestra puntos
  geom_point(alpha = 1/10)+  #muestra los niveles
  #geom_jitter()+ #muestra labarra
  scale_x_discrete('PACS',breaks = c("I1", "SI2", "SI1")) +
  scale_y_discrete('PACS',breaks = c("I1", "SI2", "SI1")) +
  theme_classic() + #muestra que sea con lineas
  ggtitle(" PACS 2009") +
  theme(legend.position="none")

melted_cormat <- melt(Adj811$A10) #vuelve parejas.
head(melted_cormat)
p2 <-ggplot(melted_cormat[melted_cormat$value > 1,],aes(x = Var1, y = Var2)) + #fill = value
  #geom_raster() #muestra puntos
  geom_point(alpha = 1/10)+  #muestra los niveles
  #geom_jitter()+ #muestra labarra
  scale_x_discrete('PACS',breaks = c("I1", "SI2", "SI1")) +
  scale_y_discrete('PACS',breaks = c("I1", "SI2", "SI1")) +
  theme_classic()  + #muestra que sea con lineas
  ggtitle(" PACS 2010") +
  theme(legend.position="none")

melted_cormat <- melt(Adj811$A11) #vuelve parejas.
head(melted_cormat)
p3 <-ggplot(melted_cormat[melted_cormat$value > 1,],aes(x = Var1, y = Var2)) + #fill = value
  #geom_raster() #muestra puntos
  geom_point(alpha = 1/10)+  #muestra los niveles
  #geom_jitter()+ #muestra labarra
  scale_x_discrete('PACS',breaks = c("I1", "SI2", "SI1")) +
  scale_y_discrete('PACS',breaks = c("I1", "SI2", "SI1")) +
  theme_classic() + #muestra que sea con lineas
  ggtitle(" PACS 2011") +
  theme(legend.position="none")  # No legend (redundant in this graph)   

multiplot(p0, p1, p2, p3,cols=2)

##grafica grado-------------------
source('Multiplot.R')
library(ggplot2)
library(grid)
library(gridExtra)
library(reshape2) #permite hacer las parejas
melted_cormat <- melt(Adj03$A00) #vuelve parejas.
head(melted_cormat)
P1 <- ggplot(melted_cormat[melted_cormat$value >0,],aes(x = Var1, y = Var2)) + #fill = value
  #geom_raster() #muestra puntos
  geom_point()+  #muestra los niveles
  #geom_jitter()+ #muestra labarra
  scale_x_discrete('PACS',breaks = c("I1", "SI2", "SI1")) +
  scale_y_discrete('PACS',breaks = c("I1", "SI2", "SI1")) +
  theme_classic()  + #muestra que sea con lineas
  ggtitle(" Grado 2000") +
  theme(legend.position="none")


melted_cormat <- melt(F00) #vuelve parejas.
head(melted_cormat)
P2 <- ggplot(melted_cormat[melted_cormat$value > 0,],aes(x = Var1, y = Var2)) + #fill = value
  #geom_raster() #muestra puntos
  geom_point()+  #muestra los niveles alpha = 1/5
  #geom_jitter()+ #muestra labarra
  scale_x_discrete('PACS',breaks = c("I1", "SI2", "SI1")) +
  scale_y_discrete('PACS',breaks = c("I1", "SI2", "SI1")) +
  theme_classic()  + #muestra que sea con lineas
  ggtitle(" Fortaleza 2000") +
  theme(legend.position="none")

multiplot(P1,P2,cols = 2)





