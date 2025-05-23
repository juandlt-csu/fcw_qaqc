% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/load_mWater.R
\name{load_mWater}
\alias{load_mWater}
\title{Load and tidy mWater field notes}
\usage{
load_mWater(
  creds = yaml::read_yaml("creds/mWaterCreds.yml"),
  summarize_interval = "15 minutes"
)
}
\arguments{
\item{creds}{A .yml file with necessary credentials for accessing the field
notes. Must contain a 'url' field.}

\item{summarize_interval}{Character string specifying the time interval to round timestamps to.
Default is "15 minutes". Accepts any interval format compatible with
lubridate::floor_date() like "1 hour", "30 mins", etc.}
}
\value{
A dataframe containing processed field notes with standardized columns:
\itemize{
\item site: Standardized site name (lowercase, no spaces)
\item DT_round: Rounded timestamp for joining with sensor data
\item start_DT/end_dt: Start and end times of field visits (UTC timezone)
\item visit_type: Type of field visit (standardized)
\item sensor_pulled/sensor_deployed: Serial numbers of equipment
\item And various other field observation columns
}
}
\description{
A function that downloads and cleasn field notes from mWater. This
funciton handles time zone conversion, standardizes text fields, and prepares
the data for integration with sonde readings.
}
\examples{
# Examples are temporarily disabled
}
\seealso{
\code{\link[=grab_mWater_sensor_notes]{grab_mWater_sensor_notes()}}

\code{\link[=grab_mWater_malfunction_notes]{grab_mWater_malfunction_notes()}}
}
