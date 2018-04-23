#' @title zonal_max
#' 
#' @description 
#' Funkcja zonal_max() pozwala na wyliczenie wartosci maksymalnej dla poszczegolnych komorek rastra 
#' 
#'
#' @param raster warstwa rastrowa
#' @param shape warstwa wektorowa
#' 
#' @examples zonal_max(raster,shape)
#'
#' @author Szymon Hetmanczyk
#' @export
#' 
zonal_max <-
  function(raster,shape){ 
    extract(raster,shape,fun=base::max)
  }

