---
layout: page
title: Pp. 148 (no. 166)
permalink: /code/166-pp148/
---

This code sample is adapted from Clifford B. Anderson and Joseph C. Wicentowski, 
[_XQuery for Humanists_](/) (College Station: Texas A&M University Press, 2020), 148. 
Download this code sample in its [raw form](/code/166-pp148/166-pp148.xq).
View the source on [GitHub](https://github.com/coding4humanists/xquery4humanists/blob/master/code/166-pp148/166-pp148.xq).

```xquery
xquery version "3.1";

let $eastern-countries := ["China", "Russia", "Japan"]
let $western-countries := ["Mexico", "Canada", "United States"]
let $countries :=
    map {
        "eastern-countries": $eastern-countries,
        "western-countries": $western-countries
    }
return
    $countries
```  
