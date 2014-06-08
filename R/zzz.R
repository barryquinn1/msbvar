# Start up functions for the MSBVAR package
#
# 2012-01-19 : updated to use new loading mechanism.
# 2012-05-20 : automated build date
# 2014-03-16 : New updates to LICENSE and version

msg <- function(...)
{
    date <- date()
    x <- regexpr("[0-9]{4}", date)
    yr <- substr(date, x[1], x[1] + attr(x, "match.length") - 1)
    message("##\n## MSBVAR Package v.0.9-0b")
    message("## Build date: ", date())
    message("## Copyright (C) 2005-", yr, ", Patrick T. Brandt\n", sep="")
    message("## Written by Patrick T. Brandt")
    message("##\n## Support provided by the U.S. National Science Foundation")
    message("## (Grants SES-0351179, SES-0351205, SES-0540816, and SES-0921051)\n##")
    message("## Small updates by Boris Demeshev")
}

.onAttach <- function(...)
{

    msg()
}

.onUnload <- function(libpath) {
    library.dynam.unload("MSBVAR", libpath)
}
