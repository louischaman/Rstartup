
#' saves the data frame in a fake file then re-reads it to guess column types
#'
#' This function counts letters 
#' @param which string would you like to count the letters of
#' @keywords string count
#' @export
#' @examples
#' read.spatial()

read.spatial <- function(path ){
        
        library(tools)
        library(rgdal)
        
        input_files_path = dirname(path)
        shp_files = file_path_sans_ext(basename(path))
        Polygons <- readOGR(input_files_path, shp_files)
        return(Polygons)
}