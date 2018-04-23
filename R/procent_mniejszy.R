#' @title zonal_less_than_avg
#' 
#' @description 
#' Funkcja zonal_less_than_avg() pozwala na wyliczenie dla poszczegolnych wartosci rastra jaki procent jest mniejszy od sredniej wartosci calego rastra
#' 
#'
#' @param raster warstwa rastrowa
#' @param shape warstwa wektorowa
#' 
#' @examples zonal_less_than_avg(raster,shape)
#'
#' @author Szymon Hetmanczyk
#' @export
#' 
zonal_less_than_avg <-
  function(raster,shape){ 
extract(raster,shape,fun=procent_mniejszy_pom)
}
procent_mniejszy_pom <-
function(x,na.rm=TRUE){ 
  a = mean(x)
  c = length(x)
  m = sum(x<a)
  prc = (m/c)*100
  return(prc)
}
