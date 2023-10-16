## ----include = FALSE----------------------------------------------------------
knitr::opts_chunk$set(
    collapse = TRUE,
    comment = "#>"
)

## ----setup--------------------------------------------------------------------
library(adaR)

## ----simple_parse-------------------------------------------------------------
ada_url_parse("https://user_1:password_1@example.org:8080/dir/../api?q=1#frag")

## ----ada_corner---------------------------------------------------------------
corner_cases <- c(
    "https://example.com:8080", "http://user:password@example.com",
    "http://[2001:0db8:85a3:0000:0000:8a2e:0370:7334]:8080", "https://example.com/path/to/resource?query=value&another=thing#fragment",
    "http://sub.sub.example.com", "ftp://files.example.com:2121/download/file.txt",
    "http://example.com/path with spaces/and&special=characters?",
    "https://user:pa%40ssword@example.com/path", "http://example.com/..//a/b/../c/./d.html",
    "https://example.com:8080/over/under?query=param#and-a-fragment",
    "http://192.168.0.1/path/to/resource", "http://3com.com/path/to/resource",
    "http://example.com/%7Eusername/", "https://example.com/a?query=value&query=value2",
    "https://example.com/a/b/c/..", "ws://websocket.example.com:9000/chat",
    "https://example.com:65535/edge-case-port", "file:///home/user/file.txt",
    "http://example.com/a/b/c/%2F%2F", "http://example.com/a/../a/../a/../a/",
    "https://example.com/./././a/", "http://example.com:8080/a;b?c=d#e",
    "http://@example.com", "http://example.com/@test", "http://example.com/@@@/a/b",
    "https://example.com:0/", "http://example.com/%25path%20with%20encoded%20chars",
    "https://example.com/path?query=%26%3D%3F%23", "http://example.com:8080/?query=value#fragment#fragment2",
    "https://example.xn--80akhbyknj4f/path/to/resource", "https://example.co.uk/path/to/resource",
    "http://username:pass%23word@example.net", "ftp://downloads.example.edu:3030/files/archive.zip",
    "https://example.com:8080/this/is/a/deeply/nested/path/to/a/resource",
    "http://another-example.com/..//test/./demo.html", "https://sub2.sub1.example.org:5000/login?user=test#section2",
    "ws://chat.example.biz:5050/livechat", "http://192.168.1.100/a/b/c/d",
    "https://secure.example.shop/cart?item=123&quantity=5", "http://example.travel/%60%21%40%23%24%25%5E%26*()",
    "https://example.museum/path/to/artifact?search=ancient", "ftp://secure-files.example.co:4040/files/document.docx",
    "https://test.example.aero/booking?flight=abc123", "http://example.asia/%E2%82%AC%E2%82%AC/path",
    "http://subdomain.example.tel/contact?name=john", "ws://game-server.example.jobs:2020/match?id=xyz",
    "http://example.mobi/path/with/mobile/content", "https://example.name/family/tree?name=smith",
    "http://192.168.2.2/path?query1=value1&query2=value2", "http://example.pro/professional/services",
    "https://example.info/information/page", "http://example.int/internal/systems/login",
    "https://example.post/postal/services", "http://example.xxx/age/verification",
    "https://example.xxx/another/edge/case/path?with=query#and-fragment"
)

df <- ada_url_parse(corner_cases)
df[, -1]

## ----ada_get------------------------------------------------------------------
ada_get_hostname(corner_cases)

## ----ada_has------------------------------------------------------------------
ada_has_search(corner_cases)

## ----ada_set------------------------------------------------------------------
ada_set_hostname("https://example.de/test", "example.com")

## ----ada_clear----------------------------------------------------------------
url <- "https://user_1:password_1@example.org:8080/dir/../api?q=1#frag"
ada_clear_port(url)
ada_clear_hash(url)
ada_clear_search(url)

## ----public_suffix------------------------------------------------------------
urls <- c(
    "https://subsub.sub.domain.co.uk",
    "https://domain.api.gov.uk",
    "https://thisisnotpart.butthisispartoftheps.kawasaki.jp"
)
public_suffix(urls)

