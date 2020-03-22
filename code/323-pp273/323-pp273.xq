xquery version "3.1";

let $json-string :=
'{
    "University of Central Florida": 63016,
    "Texas A&amp;M University": 58515,
    "Ohio State University": 55508,
    "Vanderbilt University": 12605
}'
let $parsed-json := fn:parse-json($json-string)
return
    $parsed-json?("Vanderbilt University")