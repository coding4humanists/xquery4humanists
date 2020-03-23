---
layout: page
title: Pp. 282 (no. 336)
permalink: /code/336-pp282/
---

This code sample is adapted from Clifford B. Anderson and Joseph C. Wicentowski, 
[_XQuery for Humanists_](/) (College Station: Texas A&M University Press, 2020), 282. 
Download this code sample in its [raw form](/code/336-pp282/336-pp282.xq).
View the source on [GitHub](https://github.com/coding4humanists/xquery4humanists/blob/release/code/336-pp282/336-pp282.xq).

```xquery
xquery version "3.1";

for $line in fn:unparsed-text-lines("books.csv")
return
    element row { $line }
```  
