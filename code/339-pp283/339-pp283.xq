xquery version "3.1";

let $lines := fn:unparsed-text-lines("books.csv")
let $headers:= fn:tokenize($lines[1], ",") ! fn:replace(., " ", "")
for $line in $lines[position() = 2 to last()]
let $columns := fn:tokenize($line, ",")
return
    element row {
        for $column at $count in $columns
        return
            element { $headers[$count] } { $column }
    }