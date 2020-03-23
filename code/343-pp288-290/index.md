---
layout: page
title: Pp. 288-290 (no. 343)
permalink: /code/343-pp288-290/
---

This code sample is adapted from Clifford B. Anderson and Joseph C. Wicentowski, 
[_XQuery for Humanists_](/) (College Station: Texas A&M University Press, 2020), 288-290. 
Download this code sample in its [raw form](/code/343-pp288-290/343-pp288-290.xq).
View the source on [GitHub](https://github.com/coding4humanists/xquery4humanists/blob/release/code/343-pp288-290/343-pp288-290.xq).

```xquery
xquery version "3.1";

(:~
 : This module will generate CSV files.
 :
 : @author Joe Wicentowski
 : @version 1.0
 :)

(:~
 : This function takes rows of data as arrays and produces CSV.
 :
 : @param $rows A sequence of rows, each expressed as an array of cells
 : @return The CSV
 :)
declare function local:rows-to-csv($rows as array(*)*) {
    let $cell-separator := ',' (: comma :)
    let $row-separator := '&#10;' (: newline :)
    let $rows-sequence :=
        for $row in $rows
        return
            string-join($row?*, $cell-separator)
    let $csv := string-join($rows-sequence, $row-separator)
    return
        $csv
};

(:~
: The body of this main module prepares rows for local:rows-to-csv().
:)
let $books := fn:doc("books.xml")//row
let $column-names := $books[1]/*/name() ! replace(., '_', ' ')
let $header-row := array { $column-names }
let $body-rows :=
    for $book in $books
    return
        array {
            for $cell in $book/*
            return
                if (contains($cell, ',')) then
                    '"' || $cell || '"'
                else
                    $cell
        }
let $all-rows := ($header-row, $body-rows)
return
    local:rows-to-csv($all-rows)
```  
