#' A letter counting function
#'
#' This function counts letters 
#' @param which string would you like to count the letters of
#' @keywords string count
#' @export
#' @examples
#' col.num()

col.num <- function(x) { 
                data.frame(1:ncol(x),names(x))        
        }
