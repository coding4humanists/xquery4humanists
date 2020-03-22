---
layout: page
title: Pp. 133 (no. 129)
permalink: /code/129-pp133/
---

This code sample is adapted from Clifford B. Anderson and Joseph C. Wicentowski, 
[_XQuery for Humanists_](/) (College Station: Texas A&M University Press, 2020), 133. 
Download this code sample in its [raw form](/code/129-pp133/129-pp133.xq).
View the source on [GitHub](https://github.com/coding4humanists/xquery4humanists/blob/master/code/129-pp133/129-pp133.xq).

```xquery
xquery version "3.1";

declare variable $colors := ("red", "white", "blue");

fn:string-join($colors, " ")
```  
