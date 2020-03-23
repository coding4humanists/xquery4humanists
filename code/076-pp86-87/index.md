---
layout: page
title: Pp. 86-87 (no. 76)
permalink: /code/076-pp86-87/
---

This code sample is adapted from Clifford B. Anderson and Joseph C. Wicentowski, 
[_XQuery for Humanists_](/) (College Station: Texas A&M University Press, 2020), 86-87. 
Download this code sample in its [raw form](/code/076-pp86-87/076-pp86-87.xq).
View the source on [GitHub](https://github.com/coding4humanists/xquery4humanists/blob/release/code/076-pp86-87/076-pp86-87.xq).

```xquery
let $isbn := "978-0300137231"
let $isbn-without-dash := fn:replace($isbn, "-", "")
return
    fn:string-length($isbn-without-dash)
```  
