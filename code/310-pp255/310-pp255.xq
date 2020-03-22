xquery version "3.1";

module namespace greet = "http://xquery.forhumanists.org/greet";

declare function greet:say-hello($name as xs:string?) as xs:string {
    "Hello, " || $name || "!"
};