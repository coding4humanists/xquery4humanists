---
layout: page
title: Pp. 283 (no. 339)
permalink: /code/339-pp283/
---

This code sample is adapted from Clifford B. Anderson and Joseph C. Wicentowski, 
[_XQuery for Humanists_](/) (College Station: Texas A&M University Press, 2020), 283. 
Download this code sample in its [raw form](/code/339-pp283/339-pp283.xq).

```xquery
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
```  
