# Start up functions for the MSBVAR package
#
# 2012-01-19 : updated to use new loading mechanism.
# 2012-05-20 : automated build date

msg <- function(...)
{
    message("##\n## MSBVAR Package v.0.7-2\n")
    message("## Build date: ", date(), "\n")
    message("## Copyright (C) 2005-2012, Patrick T. Brandt\n")
    message("## Written by Patrick T. Brandt\n")
    message("##\n## Support provided by the U.S. National Science Foundation\n")
    message("## (Grants SES-0351179, SES-0351205, SES-0540816, and SES-0921051)\n##\n")
    message("## Updates 0.7-3 and later by Boris Demeshev\n##\n")
}

.onAttach <- function(...)
{

    msg()
}

.onUnload <- function(libpath) {
    library.dynam.unload("MSBVAR", libpath)
}
