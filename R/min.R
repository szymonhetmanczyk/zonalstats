#' @title zonal_min
#' 
#' @description 
#' Funkcja zonal_min() pozwala na wyliczenie wartosci minimalnej dla poszczegolnych komorek rastra 
#' 
#'
#' @param raster warstwa rastrowa
#' @param shape warstwa wektorowa
#' 
#' @examples zonal_min(raster,shape)
#'
#' @author Szymon Hetmanczyk
#' @export
#' 
zonal_min <-
  function(raster,shape){ 
    extract(raster,shape,fun=base::min)
  }