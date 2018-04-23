#' @title zonal_median
#' 
#' @description 
#' Funkcja zonal_median() pozwala na wyliczenie wartosci mediany dla poszczegolnych komorek rastra 
#' 
#'
#' @param raster warstwa rastrowa
#' @param shape warstwa wektorowa
#'
#' @examples zonal_median(raster,shape)
#'
#' @author Szymon Hetmanczyk
#' @export
#' 
zonal_median <-
  function(raster,shape){ 
    extract(raster,shape,fun=mediana_pom)
  }
mediana_pom <-
function(x,na.rm=TRUE){
  median <- median(x,na.rm=TRUE)
  return(median)
}
