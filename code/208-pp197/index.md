---
layout: page
title: Pp. 197 (no. 208)
permalink: /code/208-pp197/
---

This code sample is adapted from Clifford B. Anderson and Joseph C. Wicentowski, 
[_XQuery for Humanists_](/) (College Station: Texas A&M University Press, 2020), 197. 
Download this code sample in its [raw form](/code/208-pp197/208-pp197.xq).

```xquery
let $join-with-space := fn:string-join(?, ", ")
let $words := ("Mary", "Margaret", "Max")
return
    $join-with-space($words)
```  
