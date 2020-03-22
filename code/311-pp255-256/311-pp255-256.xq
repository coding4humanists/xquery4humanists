xquery version "3.1";

(:~
: The purpose of this module is to greet XQuery
enthusiasts
:
: @author Clifford B. Anderson
: @version 1.0
: @see http://xquery.forhumanists.org/
:)
module namespace greet = "http://xquery.forhumanists.org/greet";

(:~
: This function expresses a friendly greeting
: @param $name The name of the person to be saluted
: @return An English-language salutation
:)
declare function greet:say-hello($name as xs:string?) as xs:string {
    "Hello, " || $name || "!"
};