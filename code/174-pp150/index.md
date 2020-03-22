---
layout: page
title: Pp. 150 (no. 174)
permalink: /code/174-pp150/
---

This code sample is adapted from Clifford B. Anderson and Joseph C. Wicentowski, 
[_XQuery for Humanists_](/) (College Station: Texas A&M University Press, 2020), 150. 
Download this code sample in its [raw form](/code/174-pp150/174-pp150.xq).
View the source on [GitHub](https://github.com/coding4humanists/xquery4humanists/blob/master/code/174-pp150/174-pp150.xq).

```xquery
xquery version "3.1";

let $eastern-countries := ["China", "Russia", "Japan"]
let $western-countries := ["Mexico", "Canada", "United States"]
let $countries := array:join(($eastern-countries, $western-countries))
return
    $countries
```  
