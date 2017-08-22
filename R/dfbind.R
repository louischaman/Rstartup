#' A letter counting function
#'
#' This function counts letters 
#' @param which string would you like to count the letters of
#' @keywords string count
#' @export
#' @examples
#' dfbind()

dfbind = function(df_origin, df_new){
        if(is.null(df_new)){ return(df_origin)}
        if(nrow(df_origin)==0 )  {
                return(df_new)
        }
        else{
                return(rbind(df_origin,df_new))
        }
        
}