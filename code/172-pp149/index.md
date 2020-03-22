---
layout: page
title: Pp. 149 (no. 172)
permalink: /code/172-pp149/
---

This code sample is adapted from Clifford B. Anderson and Joseph C. Wicentowski, 
[_XQuery for Humanists_](/) (College Station: Texas A&M University Press, 2020), 149. 
Download this code sample in its [raw form](/code/172-pp149/172-pp149.xq).

```xquery
xquery version "3.1";

let $eastern-countries := ("China", "Russia", "Japan")
let $western-countries := ("Mexico", "Canada", "United States")
let $countries := ($eastern-countries, $western-countries)
return
    $countries
```  
