#' @title zonal_sd
#' 
#' @description 
#' Funkcja zonal_sd() pozwala na wyliczenie wartosci odchylenia standardowego dla poszczegolnych komorek rastra 
#' 
#'
#' @param raster warstwa rastrowa
#' @param shape warstwa wektorowa
#'
#' @examples zonal_sd(raster,shape)
#'
#' @author Szymon Hetmanczyk
#' @export
#' 
zonal_sd <-
  function(raster,shape){ 
    extract(raster,shape,fun=stats::sd)
  }