library(raster)
library(mapview)
library(mapedit)


A008_b <- raster("E:/Google Drive/GIS/declass/c/geo_out_june_21/D3C1201_400410A008/geo/D3C1201400410A008_b.tif")
A008_c <- raster("E:/Google Drive/GIS/declass/c/geo_out_june_21/D3C1201_400410A008/geo/D3C1201400410A008_c.tif")
A008_d <- raster("E:/Google Drive/GIS/declass/c/geo_out_june_21/D3C1201_400410A008/geo/D3C1201400410A008_d.tif")


d_cr1 <- crop(A008_d, extent(17964000,17967000,10638000,10640000))
plot(d_cr1, col=gray(1:100/100))
res(d_cr1)
d_cr1@ncols*d_cr1@nrows


d_cr2 <- crop(A008_d, extent(17958000,17960000,10660000,10662000))
plot(d_cr2, col=gray(1:100/100))
res(d_cr2)
d_cr2@ncols*d_cr2@nrows



plot(A008_c, col=gray(1:100/100))
plot(A008_d, col=gray(1:100/100))
plot(A008_b, col=gray(1:100/100))

#start with small extent near study area

