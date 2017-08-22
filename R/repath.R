#' A letter counting function
#'
#' This function counts letters 
#' @param which string would you like to count the letters of
#' @keywords string count
#' @export
#' @examples
#' repath()

repath <- function() {
        x=scan("clipboard",what="string")
        xa = paste0("\"",paste(gsub('\\\\', '/', x), collapse = " "),  "\"")
        writeClipboard(xa)
        cat("Here's your de-windowsified path. (It's also on the clipboard.) \n \n", xa, "\n")
}