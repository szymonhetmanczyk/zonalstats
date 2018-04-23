#' @title zonal_var
#' 
#' @description 
#' Funkcja zonal_var() pozwala na wyliczenie wartosci wariancji dla poszczegolnych komorek rastra 
#' 
#'
#' @param raster warstwa rastrowa
#' @param shape warstwa wektorowa
#'
#' @examples zonal_var(raster,shape)
#'
#' @author Szymon Hetmanczyk
#' @export
#' 
zonal_var <-
  function(raster,shape){ 
    extract(raster,shape,fun=stats::var)
  }
