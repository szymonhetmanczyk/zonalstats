#' @title zonal_skewness
#' 
#' @description 
#' Funkcja zonal_skewness() pozwala na wyliczenie wartosci skosnosci dla poszczegolnych komorek rastra 
#' 
#'
#' @param raster warstwa rastrowa
#' @param shape warstwa wektorowa
#'
#' @examples zonal_skewness(raster,shape)
#'
#' @author Szymon Hetmanczyk
#' @export
#' 
zonal_skewness <-
  function(raster,shape){
    extract(raster,shape,fun=skosnosc_pom)
  }
skosnosc_pom <-
  function(x,na.rm=TRUE){
    skewness <- skewness(x,na.rm=TRUE)
    return(skewness)
  }
