library(plot3D)

drawRaster <- function(xdims) {
  persp3D(1:xdims[1], 1:xdims[2], 0, border="black", facets = FALSE, add=TRUE, colkey = FALSE)
}

drawTopografie <- function(costs, xdims, tileColor, zdim=max(costs), newPersp=TRUE) {
  if(newPersp) 
    persp3D(1:xdims[1], 1:xdims[2], costs, border="black", col=tileColor, facets = TRUE, add=FALSE, xlim=c(1,xdims[1]), ylim=c(1,xdims[2]), zlim=c(0,zdim), d=100000, colkey = FALSE)
  else
    persp3D(1:xdims[1], 1:xdims[2], costs, border="black", col=tileColor, facets = TRUE, add=TRUE)
}

drawSlice <- function(x,y,z, sliceColor) {
  for(i in (1:(length(x)-1))) {
    polygon3D(c(x[i],x[i+1],x[i+1],x[i]),c(y[i],y[i+1],y[i+1],y[i]),c(z[i],z[i+1],0,0), border="black", col=sliceColor, facets = TRUE, add=TRUE)
  }
}

drawGame <- function(c1, c2, xdims, P=NULL) {
  #Perspektive initialisieren...
  costHeight = max(max(c1),max(c2))
  dist = 0
  potHeight = 0 
  if(!is.null(P)) {
    potHeight = max(P)-min(P)
    dist = 2
  }
  persp3D(z=matrix(c(1,1,1,1),nrow=2), xlim=c(1,xdims[1]), ylim=c(1,xdims[2]), zlim=c(0,costHeight+dist+potHeight), d=100000, colkey = FALSE)
  # draw first player
  for(i in 1:xdims[2]) {
    drawSlice(seq(1,xdims[1]),rep(i,xdims[2]),c1[,i], alpha.col(col=rgb(0.6,0.1,0.2), alpha=0.7))
  }
  # draw second player
  for(j in 1:xdims[1]) {
    drawSlice(rep(j,xdims[2]),seq(1,xdims[1]),c2[j,], alpha.col(col=rgb(0.1,0.1,0.8), alpha=0.7)) 
  }
  # draw potential
  if(!is.null(P)) {
    drawTopografie(P+costHeight-min(P)+dist,xdims, newPersp = FALSE, tileColor = alpha.col(col=rgb(0.3,0.3,0.3), alpha=.5))
  }
}


# Exaktes Potential:
c1<-matrix(c(3,5,1,6,2,5,4,3,3), nrow=3)
c2<-matrix(c(4,4,0,7,1,4,7,4,4), nrow=3)
P<-matrix(c(3,5,1,6,2,5,6,5,5), nrow=3)
drawGame(c1,c2,c(3,3), P)

drawRaster(c(3,3))
drawTopografie(c1,c(3,3),tileColor=alpha.col(col=rgb(0.6,0.1,0.2), alpha=0.7), zdim=15)
drawTopografie(c2,c(3,3),tileColor=alpha.col(col=rgb(0.1,0.1,0.8), alpha=0.7), zdim=15)