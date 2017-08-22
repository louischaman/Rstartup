#' A letter counting function
#'
#' This function counts letters 
#' @param which string would you like to count the letters of
#' @keywords string count
#' @export
#' @examples
#' na.rep()

na.rep = function(data, replacement = 0){
        data[is.na(data)] = replacement
        return(data)
}