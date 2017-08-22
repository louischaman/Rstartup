#' A letter counting function
#'
#' This function counts letters 
#' @param which string would you like to count the letters of
#' @keywords string count
#' @export
#' @examples
#' rmWhite()

# returns string w/o leading or trailing whitespace
rmWhite <- function (x) gsub("^\\s+|\\s+$", "", x)