---
layout: page
title: Pp. 275 (no. 329)
permalink: /code/329-pp275/
---

This code sample is adapted from Clifford B. Anderson and Joseph C. Wicentowski, 
[_XQuery for Humanists_](/) (College Station: Texas A&M University Press, 2020), 275. 
Download this code sample in its [raw form](/code/329-pp275/329-pp275.xq).
View the source on [GitHub](https://github.com/coding4humanists/xquery4humanists/blob/master/code/329-pp275/329-pp275.xq).

```xquery
let $num :=
    fn:json-doc("https://json.xquery.ninja/")?milliseconds_since_epoch
return
    $num cast as xs:integer
```  
