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


d_cr2 <- crop(A008_d, extent(17952000,17955000,10652000,10657000))
plot(d_cr2, col=gray(1:100/100))
res(d_cr2)
d_cr2@ncols*d_cr2@nrows

upland <- drawFeatures( mapview(d_cr2, col=grey(1:100/100)))



plot(A008_c, col=gray(1:100/100))
plot(A008_d, col=gray(1:100/100))
plot(A008_b, col=gray(1:100/100))


dem <- raster("E:/Google Drive/GIS/Arctic_DEM/62_30_2_1_2m_v3.0/62_30_2_1_2m_v3.0_reg_dem.tif")
plot(dem, col=gray(1:100/100))
demPr <- projectRaster(dem,A008_d)
plot(demPr)
res(dem)

dem@crs

#start with small extent near study area

library(glcm)


test <- glcm(d_cr1)
plot(test)
