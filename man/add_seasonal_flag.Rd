% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/add_seasonal_flag.R
\name{add_seasonal_flag}
\alias{add_seasonal_flag}
\title{Flag data outside seasonal ranges and with abnormal slopes}
\usage{
add_seasonal_flag(df, threshold_table)
}
\arguments{
\item{df}{A data frame containing water quality measurements. Must include columns:
\itemize{
\item \code{site}: Standardized site name
\item \code{parameter}: The measurement type
\item \code{mean}: The calculated mean value of measurements
\item \code{season}: Season categorization for the measurement
\item \code{slope_ahead}: Rate of change to the next measurement
\item \code{slope_behind}: Rate of change from the previous measurement
\item \code{flag}: Existing quality flags (will be updated by this function)
}}

\item{threshold_table}{A dataframe containing seasonal threshold values with columns:
\itemize{
\item \code{site}: Site name matching the df site column
\item \code{parameter}: Parameter name matching the df parameter column
\item \code{season}: Season categorization (e.g., "spring", "summer")
\item \code{t_mean01}: 1st percentile threshold for the mean value
\item \code{t_mean99}: 99th percentile threshold for the mean value
\item \code{t_slope_behind_01}: 1st percentile threshold for slope values
\item \code{t_slope_behind_99}: 99th percentile threshold for slope values
}}
}
\value{
A data frame with the same structure as the input, but with the flag
column updated to include "outside of seasonal range" and/or "slope violation"
flags as appropriate.
}
\description{
Identifies and flags water quality measurements that fall outside expected seasonal
patterns based on historical data. This function applies two distinct quality flags:
\enumerate{
\item "outside of seasonal range" - Applied when a measurement falls outside the 1st-99th
percentile range of historical measurements for that site, parameter, and season
\item "slope violation" - Applied when the rate of change (slope) between consecutive
measurements exceeds historical thresholds, potentially indicating sensor malfunction
or unusual environmental events
}

These flags help distinguish between natural seasonal variation and potentially
problematic measurements requiring further investigation.
}
\examples{
# Examples are temporarily disabled
}
\seealso{
\code{\link[=add_spec_flag]{add_spec_flag()}}

\code{\link[=add_flag]{add_flag()}}
}
