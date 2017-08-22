#' A letter counting function
#'
#' This function counts letters 
#' @param which string would you like to count the letters of
#' @keywords string count
#' @export
#' @examples
#' insert_row()

insert_row = function(df, insert_below_row, fill = NA){
        
        rows = c( seq(1,insert_below_row), seq(insert_below_row,nrow(df)))
        added_df = df[rows,]
        added_df[insert_below_row+1,] = fill
        return(added_df)
}