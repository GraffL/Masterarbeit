library(plot3D)

drawSlice <- function(x,y,z, sliceColor) {
  polygon3D(c(x,rev(x)),c(y,rev(y)),c(z, rep(0,length(z))), border="black", col=sliceColor, facets = TRUE, add=TRUE)
}

drawGame <- function(c1, c2, xdims, P=0) {
  #Perspektive initialisieren...
  persp3D(z=matrix(c(1,1,1,1),nrow=2), xlim=c(1,xdims[1]), ylim=c(1,xdims[2]), zlim=c(0,max(max(c1),max(c2))), d=100000)
  # draw first player
  for(i in 1:xdims[1]) {
    drawSlice(rep(i,xdims[2]),seq(1,xdims[2]),c1[,i], alpha.col(col=rgb(0.6,0.1,0.2), alpha=0.7))
  }
  # draw second player
  for(j in 1:xdims[2]) {
    drawSlice(seq(1,xdims[1]),rep(j,xdims[1]),c2[j,], alpha.col(col=rgb(0.1,0.1,0.8), alpha=0.7))
  }
}


c1<-matrix(c(7,7,6,5,4,4,3,2,1), nrow=3)
c2<-matrix(c(5,5,5,3,4,4,4,3,3), nrow=3)
drawGame(c1,c2,c(3,3))
