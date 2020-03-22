---
layout: page
title: Pp. 282 (no. 337)
permalink: /code/337-pp282/
---

This code sample is adapted from Clifford B. Anderson and Joseph C. Wicentowski, 
[_XQuery for Humanists_](/) (College Station: Texas A&M University Press, 2020), 282. 
Download this code sample in its [raw form](/code/337-pp282/337-pp282.xq).
View the source on [GitHub](https://github.com/coding4humanists/xquery4humanists/blob/master/code/337-pp282/337-pp282.xq).

```xquery
xquery version "3.1";

for $line in fn:unparsed-text-lines("books.csv")
let $columns := fn:tokenize($line, ",")
return
    element row {
        for $column in $columns
        return
            element column { $column }
    }
```  
