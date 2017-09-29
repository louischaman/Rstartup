#' A letter counting function
#'
#' This function counts letters 
#' @param which string would you like to count the letters of
#' @keywords string count
#' @export
#' @examples
#' write.excel()

write.excel <- function(x,row.names=F,col.names=TRUE,...) {
        write.table(x,"clipboard",sep="\t",row.names=row.names,col.names=col.names,...)
}

#' This reads from clipboard excel cells to dataframe
#'
#' This function counts letters 
#' @param which string would you like to count the letters of
#' @keywords string count
#' @export
#' @examples
#' read.excel()

read.excel <- function(header=TRUE,...) {
        read.table("clipboard",sep="\t",header=header,..., stringsAsFactors = F)
}

#dat=read.excel()