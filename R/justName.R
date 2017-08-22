#' A letter counting function
#'
#' This function counts letters 
#' @param which string would you like to count the letters of
#' @keywords string count
#' @export
#' @examples
#' justName()

justName = function(file_name){
        return(file_path_sans_ext( basename(file_name)))
}