---
layout: page
title: Pp. 126 (no. 122)
permalink: /code/122-pp126/
---

This code sample is adapted from Clifford B. Anderson and Joseph C. Wicentowski, 
[_XQuery for Humanists_](/) (College Station: Texas A&M University Press, 2020), 126. 
Download this code sample in its [raw form](/code/122-pp126/122-pp126.xq).
View the source on [GitHub](https://github.com/coding4humanists/xquery4humanists/blob/master/code/122-pp126/122-pp126.xq).

```xquery
xquery version "3.1";

import module namespace tf = "http://xquery.forhumanists.org/tei-functions"
    at "tei-functions.xqm";
    (: Change the path to the file as necessary :)

tf:make-tei-title(
    "citizens at last",
    "the woman suffrage movement in Texas"
)
```  
