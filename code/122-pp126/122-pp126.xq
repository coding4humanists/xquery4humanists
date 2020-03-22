xquery version "3.1";

import module namespace tf = "http://xquery.forhumanists.org/tei-functions"
    at "tei-functions.xqm";
    (: Change the path to the file as necessary :)

tf:make-tei-title(
    "citizens at last",
    "the woman suffrage movement in Texas"
)