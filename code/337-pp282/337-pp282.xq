xquery version "3.1";

for $line in fn:unparsed-text-lines("books.csv")
let $columns := fn:tokenize($line, ",")
return
    element row {
        for $column in $columns
        return
            element column { $column }
    }