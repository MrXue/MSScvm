% Generated by roxygen2 (4.1.1): do not edit by hand
% Please edit documentation in R/MSSdn2refl.r
\name{MSSdn2refl}
\alias{MSSdn2refl}
\title{Convert MSS DN values to TOA reflectance}
\usage{
MSSdn2refl(imgFile)
}
\arguments{
\item{imgFile}{filename (character). Full path to *dn.tif image file produced by the \code{\link{MSSunpack}} function.}
}
\value{
A 4-band Landsat MSS GeoTIFF raster image file in units of top-of-atmosphere (TOA) reflectance. The file will be placed in the
same directory as the 'imgFile' with the name equal to the image ID followed by 'toa_reflectance'. Note that the values are scaled by 10,000
and rounded to the nearest integer to reduce the file size.
}
\description{
Convert MSS DN values to TOA reflectance.
}
\details{
DN values are first converted to top-of-atmosphere (TOA) radiance using the equation found \href{http://landsat.usgs.gov/how_is_radiance_calculated.php}{here}.
Then TOA radiance is converted to TOA reflectance using the equation found \href{http://landsathandbook.gsfc.nasa.gov/data_prod/prog_sect11_3.html}{here}.
The ESUN values used are from the publication 'Chander et al. 2009. Summary of current radiometric calibration coefficients... Remote Sensing of Environment. 113'.
}
\examples{
\dontrun{

MSSdn2refl("C:/mss/LM10360321973191AAA04/LM10360321973191AAA04_dn.tif")
}
}
\seealso{
\code{\link{MSSdn2rad}}
}

