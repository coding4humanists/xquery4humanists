---
layout: page
title: Pp. 147 (no. 164)
permalink: /code/164-pp147/
---

This code sample is adapted from Clifford B. Anderson and Joseph C. Wicentowski, 
[_XQuery for Humanists_](/) (College Station: Texas A&M University Press, 2020), 147. 
Download this code sample in its [raw form](/code/164-pp147/164-pp147.xq).
View the source on [GitHub](https://github.com/coding4humanists/xquery4humanists/blob/release/code/164-pp147/164-pp147.xq).

```xquery
xquery version "3.1";

declare variable $countries :=
    [
        ["China", "Russia", "Japan"],
        ["Mexico", "Canada", "United States"]
    ];

$countries?1?3
```  
