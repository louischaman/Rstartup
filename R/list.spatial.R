#' Lists unique shapefiles
#'
#' 
#' @param what path should you list them from
#' @keywords path is here
#' @export
#' @examples
#' list.spatial()


list.spatial = function(path){
        files = list.files(path)
        base_name = sapply(strsplit(files, split = "[.]"), function(x)x[1])
        shps = unique(base_name)
        return(shps)
}