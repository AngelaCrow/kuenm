#' Getting available RAM
#'
#' @description get_free_ram is used by the \code{\link{kuenm_cal}} and \code{\link{kuenm_mod}} functions.
#' At the moment this functions works well in Windows OS, for MAC and Linux it returns 4 GB.
#'
#' @return A numeric value representing the amount of RAM that is not being used in other processes.
#'
#' @details Although this function was designed to be used with the \code{\link{kuenm_cal}} and
#' \code{\link{kuenm_mod}} functions, it may be used to know how much RAM is free in a specific time.
#'
#' @examples
#' fre_ram <- get_free_ram()

get_free_ram <- function(){
  if(Sys.info()[["sysname"]] == "Windows"){
    x <- system2("wmic", args =  "OS get FreePhysicalMemory /Value", stdout = TRUE)
    x <- x[grepl("FreePhysicalMemory", x)]
    x <- gsub("FreePhysicalMemory=", "", x, fixed = TRUE)
    x <- gsub("\r", "", x, fixed = TRUE)
    as.integer(x)
  } else {
    cat("\nOnly supported on Windows OS\n1.6 Gb of the memory will be used for java runnings\n")
    x <- 4000000
  }
}
