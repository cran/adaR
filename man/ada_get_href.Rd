% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/get.R
\name{ada_get_href}
\alias{ada_get_href}
\alias{ada_get_username}
\alias{ada_get_password}
\alias{ada_get_port}
\alias{ada_get_hash}
\alias{ada_get_host}
\alias{ada_get_hostname}
\alias{ada_get_pathname}
\alias{ada_get_search}
\alias{ada_get_protocol}
\alias{ada_get_domain}
\alias{ada_get_basename}
\title{Get a specific component of URL}
\usage{
ada_get_href(url, decode = TRUE)

ada_get_username(url, decode = TRUE)

ada_get_password(url, decode = TRUE)

ada_get_port(url, decode = TRUE)

ada_get_hash(url, decode = TRUE)

ada_get_host(url, decode = TRUE)

ada_get_hostname(url, decode = TRUE)

ada_get_pathname(url, decode = TRUE)

ada_get_search(url, decode = TRUE)

ada_get_protocol(url, decode = TRUE)

ada_get_domain(url, decode = TRUE)

ada_get_basename(url)
}
\arguments{
\item{url}{character. one or more URL to be parsed}

\item{decode}{logical. Whether to decode the output (see \code{\link[utils:URLencode]{utils::URLdecode()}}), default to \code{TRUE}}
}
\value{
character, \code{NA} if not a valid URL
}
\description{
These functions get a specific component of URL.
}
\examples{
url <- "https://user_1:password_1@example.org:8080/dir/../api?q=1#frag"
ada_get_href(url)
ada_get_username(url)
ada_get_password(url)
ada_get_port(url)
ada_get_hash(url)
ada_get_host(url)
ada_get_hostname(url)
ada_get_pathname(url)
ada_get_search(url)
ada_get_protocol(url)
ada_get_domain(url)
ada_get_basename(url)
## these functions are vectorized
urls <- c("http://www.google.com", "http://www.google.com:80", "noturl")
ada_get_port(urls)
}
