---
layout: page
title: Pp. 255 (no. 310)
permalink: /code/310-pp255/
---

This code sample is adapted from Clifford B. Anderson and Joseph C. Wicentowski, 
[_XQuery for Humanists_](/) (College Station: Texas A&M University Press, 2020), 255. 
Download this code sample in its [raw form](/code/310-pp255/310-pp255.xq).
View the source on [GitHub](https://github.com/coding4humanists/xquery4humanists/blob/master/code/310-pp255/310-pp255.xq).

```xquery
xquery version "3.1";

module namespace greet = "http://xquery.forhumanists.org/greet";

declare function greet:say-hello($name as xs:string?) as xs:string {
    "Hello, " || $name || "!"
};
```  
