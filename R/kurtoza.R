#' @title zonal_kurtosis
#' 
#' @description 
#' Funkcja zonal_kurtosis() pozwala na wyliczenie wartosci kurtozy dla poszczegolnych komorek rastra 
#' 
#'
#' @param raster warstwa rastrowa
#' @param shape warstwa wektorowa
#'
#' @examples zonal_kurtosis(raster,shape)
#'
#' @author Szymon Hetmanczyk
#' @export
#' 
zonal_kurtosis <-
  function(raster,shape){
    extract(raster,shape,fun=kurtoza_pom)
  }
kurtoza_pom <-
  function(x,na.rm=TRUE){
    kurtosis <- kurtosis(x,na.rm=TRUE)
    return(kurtosis)
  }
