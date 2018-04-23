#' @title zonal_mean
#' 
#' @description 
#' Funkcja zonal_mean() pozwala na wyliczenie sredniej dla poszczegolnych komorek rastra 
#' 
#'
#' @param raster warstwa rastrowa
#' @param shape warstwa wektorowa
#'
#' @examples zonal_mean(raster,shape)
#'
#' @author Szymon Hetmanczyk
#' @export
#' 
zonal_mean <-
  function(raster,shape){ 
    extract(raster,shape,fun=srednia_pom)
  }
srednia_pom <-
function(x,na.rm=TRUE){
  mean <- mean(x,na.rm=TRUE)
  return(mean)
}
