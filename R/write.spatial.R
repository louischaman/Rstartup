#' A letter counting function
#'
#' This function counts letters 
#' @param which string would you like to count the letters of
#' @keywords string count
#' @export
#' @examples
#' write.spatial()
#' 
# saves the data frame in a fake file then re-reads it to guess column types
write.spatial <- function (spatial_df, path, overwrite = T){
        
        shp_files = basename(file_path_sans_ext(path))
        input_files_path = dirname(path)
        
        library(maptools)
        library(rgdal)
        
        
        if(overwrite){
                
                file_list = list.files(input_files_path, paste0(shp_files,'*'), full.names = T)
                if(length(file_list)>0){
                        cat("deleting existing files")
                        file.remove(file_list)
                        
                }
                
        }
        
        # export shapefile first using gdal to get shp with the prj file
        writeOGR(spatial_df, input_files_path, shp_files, driver = "ESRI Shapefile")
        
        # however writeOGR messes up field names so use writeSpatialShape 
        # to overwrite the data and get correct field names
        writeSpatialShape(spatial_df, file_path_sans_ext(path))

}