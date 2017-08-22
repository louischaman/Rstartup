#' A letter counting function
#'
#' This function counts letters 
#' @param which string would you like to count the letters of
#' @keywords string count
#' @export
#' @examples
#' remPunc()

# saves the data frame in a fake file then re-reads it to guess column types
remPunc <- function (str, replacement = ""){
        return(gsub("[[:punct:]]", replacement, str))

}