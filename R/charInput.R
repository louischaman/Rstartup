#' puts the string array into a pasteable list
#'
#' generates output for code 
#' @param which string array
#' @keywords thid 
#' @export 
#' @examples
#' charInput()

charInput = function(char_array){
        first_str = paste(char_array, collapse = "\", \n\t\"") 
        out_str = paste0("c(\n\t\"", first_str, "\"\n)")
        cat(out_str)
        #return(out_str)
} 