library(readxl)
library(tidyverse)
library(psych)
library(mirt)

### iri invertir## 

iri <- datos[,c(21:48)]

iri1 <- datos[,c(21:48)]

keys <- c(1,1,-1,-1,1,1,-1,1,1,1,1,-1,-1,-1,-1,1,1,-1,-1,1,1,1,1,1,1,1,1,1)

iri <- reverse.code(keys,iri,mini=1,max=5)

iri <- data.frame(iri)


### fantasia ### 

fnt <-select(iri,iri26,iri5,iri7.,iri16,iri1,iri12.,iri23)

#### perspectiva

prs<-select(iri,iri28,iri15.,iri11,iri21,iri3.,iri8,iri25)

### preocupacion

prcp<-select(iri, iri9,iri18.,iri2,iri22,iri4.,iri14.,iri20)

### angustia

ang<-select(iri,iri27,iri10,iri6,iri19.,iri17,iri13.,iri24)


### modelo fantasia ###

modelfnt <- scoreIrt(items=fnt)

modelfnt <- mirt(fnt,model=1, itemtype= "graded",method = "MCEM")








