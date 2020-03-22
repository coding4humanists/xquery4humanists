---
layout: page
title: Pp. 292 (no. 345)
permalink: /code/345-pp292/
---

This code sample is adapted from Clifford B. Anderson and Joseph C. Wicentowski, 
[_XQuery for Humanists_](/) (College Station: Texas A&M University Press, 2020), 292. 
Download this code sample in its [raw form](/code/345-pp292/345-pp292.xq).
View the source on [GitHub](https://github.com/coding4humanists/xquery4humanists/blob/master/code/345-pp292/345-pp292.xq).

```xquery
xquery version "3.1";

let $stylesheet := doc("books.xsl")
let $source := doc("books.xml")
let $options :=
    map {
        "stylesheet-node": $stylesheet,
        "source-node": $source
    }
return
    fn:transform($options)?output
```  
