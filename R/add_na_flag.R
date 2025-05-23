#' @title Flag missing data in water quality measurements
#' @export
#'
#' @description
#' Identifies and flags rows in water quality data where measurements are missing (NA values).
#' This function helps maintain data quality by explicitly marking gaps in the continuous
#' monitoring record, allowing downstream analysis to properly handle these missing values.
#'
#' @param df A data frame containing water quality measurements. Must include columns:
#' - mean: The calculated mean value of measurements (function checks this for NA values)
#' - flag: Existing quality flags (will be updated by this function)
#'
#' @return A data frame with the same structure as the input, but with the flag
#' column updated to include "missing data" for any rows where the mean value is NA.
#'
#' @examples
#' # Examples are temporarily disabled
#' @seealso [add_flag()]

add_na_flag <- function(df){
  df <- df %>%
    add_flag(is.na(mean), "missing data")
}
