library(stringdist)
library(dplyr)

advanced.search<-function(x,y) {
  disttable<-apply(x,1,FUN = 
                     function (z) stringdist(unlist(list(matrix(as.matrix(z),dimnames=NULL))),unlist(list(matrix(as.matrix(y),dimnames=NULL)))))
  mintable<-apply(disttable,2, FUN = function (z) which(z==min(z)))
  bestvalue<-vector()
  for (i in 1:nrow(x)) {
    bestvalue[i]<-paste(unlist(list(matrix(as.matrix(y[unlist(mintable[i]),]),dimnames=NULL))),collapse="|")
  }
  bestindex<-apply(disttable,2, FUN = function (z) paste(which(z==min(z)),collapse="|"))
  mindist<-apply(disttable,2,FUN=min)
  cbind(x,bestindex=bestindex,bestvalue=bestvalue,mindist=mindist)
}

advanced.search2<-function(x,y,t) {
  disttable<-apply(x,1,FUN = 
                     function (z) stringdist(unlist(list(matrix(as.matrix(z),dimnames=NULL))),unlist(list(matrix(as.matrix(y),dimnames=NULL)))))
  mintable<-apply(disttable,2, FUN = function (z) which(z==min(z)))
  bestvalue<-vector()
  for (i in 1:nrow(x)) {
    bestvalue[i]<-paste(unlist(list(matrix(as.matrix(y[unlist(mintable[i]),]),dimnames=NULL))),collapse="|")
  }
  bestindex<-apply(disttable,2, FUN = function (z) paste(which(z==min(z)),collapse="|"))
  mindist<-apply(disttable,2,FUN=min)
  temptable<-cbind(x,BestIndex=bestindex,BestValue=bestvalue,MinDist=mindist)
  temptable2<-mutate(temptable,value_t = ifelse(mindist<=t,bestvalue," "))
  names(temptable2)[5]<-paste(c("value (acc=",t,")"),collapse="")
  temptable2
}

