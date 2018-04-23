#' @title zonal_custom_function 
#' 
#' @description 
#' Funkcja zonal_custom_function() pozwala na dodanie przez uzytkownika wczesniej zdefiniowanej wlasnej funkcji i wyliczenia statystyk strefowych na jej podstawie
#' 
#'
#' @param raster warstwa rastrowa
#' @param shape warstwa wektorowa
#' @param custom_function wlasna funkcja
#'
#' @examples test_custom_function <-
#'  function(x, na.rm=TRUE){ 
#'    wynik <- max(x)
#'    return(wynik)
#'  }
#'  
#'  zonal_custom_function <-
#' function(raster,shape,custom_function){
#'   extract(raster,shape,fun=custom_function)
#' }
#'
#' @author Szymon Hetmanczyk
#'
#' @export
#' 
zonal_custom_function <-
  function(raster,shape,custom_function){
    extract(raster,shape,fun=custom_function)
  }