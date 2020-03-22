xquery version "3.1";

let $stylesheet := doc("books.xsl")
let $source := doc("books.xml")
let $options :=
    map {
        "stylesheet-node": $stylesheet,
        "source-node": $source
    }
return
    fn:transform($options)?output