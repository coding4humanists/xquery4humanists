---
layout: page
title: Pp. 166 (no. 189)
permalink: /code/189-pp166/
---

This code sample is adapted from Clifford B. Anderson and Joseph C. Wicentowski, 
[_XQuery for Humanists_](/) (College Station: Texas A&M University Press, 2020), 166. 
Download this code sample in its [raw form](/code/189-pp166/189-pp166.xq).
View the source on [GitHub](https://github.com/coding4humanists/xquery4humanists/blob/release/code/189-pp166/189-pp166.xq).

```xquery
xquery version "3.1";

let $name := "Franklin D. Roosevelt"
let $url := fn:replace(fn:lower-case($name), "\W+", "-")
return
    $url
```  
