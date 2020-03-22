---
layout: page
title: Pp. 217 (no. 237)
permalink: /code/237-pp217/
---

This code sample is adapted from Clifford B. Anderson and Joseph C. Wicentowski, 
[_XQuery for Humanists_](/) (College Station: Texas A&M University Press, 2020), 217. 
Download this code sample in its [raw form](/code/237-pp217/237-pp217.xq).
View the source on [GitHub](https://github.com/coding4humanists/xquery4humanists/blob/master/code/237-pp217/237-pp217.xq).

```xquery
xquery version "3.1";

let $book := fn:doc("book.xml")
return
    insert node <genre>Science Fiction</genre> into $book/book
```  
