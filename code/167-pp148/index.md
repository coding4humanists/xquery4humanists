---
layout: page
title: Pp. 148 (no. 167)
permalink: /code/167-pp148/
---

This code sample is adapted from Clifford B. Anderson and Joseph C. Wicentowski, 
[_XQuery for Humanists_](/) (College Station: Texas A&M University Press, 2020), 148. 
Download this code sample in its [raw form](/code/167-pp148/167-pp148.xq).

```xquery
xquery version "3.1";

declare variable $eastern-countries := ["China", "Russia", "Japan"];
declare variable $western-countries := ["Mexico", "Canada", "United States"];
declare variable $countries := 
    map {
        "eastern-countries": $eastern-countries,
        "western-countries": $western-countries
    };

$countries?western-countries?1
```  
