---
layout: page
title: Pp. 165 (no. 188)
permalink: /code/188-pp165/
---

This code sample is adapted from Clifford B. Anderson and Joseph C. Wicentowski, 
[_XQuery for Humanists_](/) (College Station: Texas A&M University Press, 2020), 165. 
Download this code sample in its [raw form](/code/188-pp165/188-pp165.xq).

```xquery
xquery version "3.1";

let $name := "Franklin D. Roosevelt"
let $url := fn:lower-case($name)
let $url := fn:replace($url, "\W+", "-")
return
    $url
```  
