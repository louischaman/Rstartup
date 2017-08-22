#' A letter counting function
#'
#' This function counts letters 
#' @param which string would you like to count the letters of
#' @keywords string count
#' @export
#' @examples
#' char.num()

char.num <- function(input_char_str) { 
                split_nums = strsplit(input_char_str, "")
                char_str = as.data.frame(do.call(cbind, split_nums))
                char_str_2 = cbind(num = 1:nrow(char_str), char_str)
                return(char_str_2)
                     
        }
