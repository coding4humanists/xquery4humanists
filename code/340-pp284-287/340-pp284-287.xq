xquery version "3.1";

(:~
: This module parses a simple CSV file into XML.
:
: @author Clifford Anderson
: @author Joe Wicentowski
: @version 1.0
:)

(:~
: This function parses a comma-separated row into cells. Handles the
: case where a cell is encased in quotation marks.
:
: @param $row A string containing a CSV row
: @return The cells from the row as a sequence of strings
:)
declare function local:parse-row($row as xs:string) as xs:string* {
    (: Work around XPath’s lack of the regular expression lookahead
     : operator by adding a trailing comma to the row, so every cell
     : ends with a comma :)
    let $string-to-analyze := $row || ","

    (: Build up a regular expression that finds quoted and non-quoted cells :)
    let $quoted-cell-regex := '"[^"]*"'
    let $unquoted-cell-regex := '[^,]*'
    let $quoted-or-unquoted := $quoted-cell-regex || "|" || $unquoted-cell-regex
    let $combined-cell-regex := "(" || $quoted-or-unquoted || "),"
    let $analyze := fn:analyze-string($string-to-analyze, $combined-cell-regex)
    let $cell-analysis := fn:analyze-string($string-to-analyze, $combined-cell-regex)
    let $cells := $cell-analysis//fn:group[@nr/string() eq "1"]
    for $cell in $cells
    return
        (: strip outer quotes if found :)
        if (matches($cell, '^".+"$')) then
            replace($cell, '^"([^"]+)"$', '$1')
        else
            $cell/string()
};

(:~
: This function reads in and parses a CSV file. It splits the file into
: rows, assuming the first line contains column headers. It returns a
: "csv" element containing "row" elements, with child cells named using
: the column names.
:
: @param $uri The location of the CSV file
: @return An XML representation of the parsed CSV file
:)
declare function local:csv-to-xml($uri as xs:string) as element(csv) {
    let $lines := fn:unparsed-text-lines($uri)
    let $header-row := fn:head($lines)
    let $body-rows := fn:tail($lines)
    (: Replace space with underscore to ensure valid QName for column element :)
    let $column-names := local:parse-row($header-row) ! replace(., " ", "_")
    return
        element csv {
            for $row in $body-rows
            let $cells := local:parse-row($row)
            return
                element row {
                    for $cell at $n in $cells
                    let $column-name := $column-names[$n]
                    return
                        element { $column-name } { $cell }
                }
        }
};

(:~
 : The body of this main module calls local:csv-to-xml() on our CSV file.
 :)
let $uri := "books.csv"
return
    local:csv-to-xml($uri)