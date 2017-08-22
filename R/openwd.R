#' A letter counting function
#'
#' This function counts letters 
#' @param which string would you like to count the letters of
#' @keywords string count
#' @export
#' @examples
#' openwd()

openwd = function(a = NULL, justFolder = T){
        require(tools)
        if(is.null(a)){
                a = getwd()
        }
        
        if(justFolder & file_ext(a) != ""){
                a  = dirname(a )
        }
        
        win_path = paste("explorer", gsub("/", "\\\\", a))
     
        
        shell(win_path, intern=TRUE) 
}
