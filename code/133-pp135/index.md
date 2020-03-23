---
layout: page
title: Pp. 135 (no. 133)
permalink: /code/133-pp135/
---

This code sample is adapted from Clifford B. Anderson and Joseph C. Wicentowski, 
[_XQuery for Humanists_](/) (College Station: Texas A&M University Press, 2020), 135. 
Download this code sample in its [raw form](/code/133-pp135/133-pp135.xq).
View the source on [GitHub](https://github.com/coding4humanists/xquery4humanists/blob/release/code/133-pp135/133-pp135.xq).

```xquery
let $name := "XQuery Working Group"
return
``[
@prefix foaf: <http://xmlns.com/foaf/0.1/> .

_:xqywg a foaf:Group;
  foaf:name "`{ $name }`" .
]``
```  
