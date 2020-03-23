---
layout: page
title: Pp. 218 (no. 240)
permalink: /code/240-pp218/
---

This code sample is adapted from Clifford B. Anderson and Joseph C. Wicentowski, 
[_XQuery for Humanists_](/) (College Station: Texas A&M University Press, 2020), 218. 
Download this code sample in its [raw form](/code/240-pp218/240-pp218.xq).
View the source on [GitHub](https://github.com/coding4humanists/xquery4humanists/blob/release/code/240-pp218/240-pp218.xq).

```xquery
xquery version "3.1";

let $book := fn:doc("book.xml")
return
    rename node $book/book/author as "creator"
```  
