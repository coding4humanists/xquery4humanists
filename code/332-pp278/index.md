---
layout: page
title: Pp. 278 (no. 332)
permalink: /code/332-pp278/
---

This code sample is adapted from Clifford B. Anderson and Joseph C. Wicentowski, 
[_XQuery for Humanists_](/) (College Station: Texas A&M University Press, 2020), 278. 
Download this code sample in its [raw form](/code/332-pp278/332-pp278.xq).

```xquery
xquery version "3.1";

let $json := '{
    "time": "04:07:53 PM",
    "date": "08-30-2016",
    "milliseconds_since_epoch": 1472591273170
}'
return
    fn:json-to-xml($json)
```  
