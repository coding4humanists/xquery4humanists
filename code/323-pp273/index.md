---
layout: page
title: Pp. 273 (no. 323)
permalink: /code/323-pp273/
---

This code sample is adapted from Clifford B. Anderson and Joseph C. Wicentowski, 
[_XQuery for Humanists_](/) (College Station: Texas A&M University Press, 2020), 273. 
Download this code sample in its [raw form](/code/323-pp273/323-pp273.xq).
View the source on [GitHub](https://github.com/coding4humanists/xquery4humanists/blob/release/code/323-pp273/323-pp273.xq).

```xquery
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
```  
