---
layout: page
title: Pp. 166-167 (no. 190)
permalink: /code/190-pp166-167/
---

This code sample is adapted from Clifford B. Anderson and Joseph C. Wicentowski, 
[_XQuery for Humanists_](/) (College Station: Texas A&M University Press, 2020), 166-167. 
Download this code sample in its [raw form](/code/190-pp166-167/190-pp166-167.xq).
View the source on [GitHub](https://github.com/coding4humanists/xquery4humanists/blob/master/code/190-pp166-167/190-pp166-167.xq).

```xquery
xquery version "3.1";

let $name := "Franklin D. Roosevelt"
let $url := fn:lower-case($name) => fn:replace("\W+", "-")
return
    $url
```  
