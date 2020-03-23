---
layout: page
title: Pp. 151-152 (no. 180)
permalink: /code/180-pp151-152/
---

This code sample is adapted from Clifford B. Anderson and Joseph C. Wicentowski, 
[_XQuery for Humanists_](/) (College Station: Texas A&M University Press, 2020), 151-152. 
Download this code sample in its [raw form](/code/180-pp151-152/180-pp151-152.xq).
View the source on [GitHub](https://github.com/coding4humanists/xquery4humanists/blob/release/code/180-pp151-152/180-pp151-152.xq).

```xquery
xquery version "3.1";

let $countries :=
    map {
        "eastern": ["China", "Russia", "Japan"],
        "western": ["Mexico", "Canada", "United States"]
    }
let $eastern := array:append($countries("eastern"), "Indonesia")
return
    map:put($countries, "eastern", $eastern)
```  
