---
layout: page
title: Pp. 283 (no. 338)
permalink: /code/338-pp283/
---

This code sample is adapted from Clifford B. Anderson and Joseph C. Wicentowski, 
[_XQuery for Humanists_](/) (College Station: Texas A&M University Press, 2020), 283. 
Download this code sample in its [raw form](/code/338-pp283/338-pp283.xq).
View the source on [GitHub](https://github.com/coding4humanists/xquery4humanists/blob/master/code/338-pp283/338-pp283.xq).

```xquery
xquery version "3.1";

let $lines := fn:unparsed-text-lines("books.csv")
let $headers := fn:tokenize($lines[1], ",")
for $line in $lines[position() = 2 to last()]
let $columns := fn:tokenize($line, ",")
return
    element row {
        for $column at $count in $columns
        return
            element { $headers[$count] } { $column }
    }
```  
