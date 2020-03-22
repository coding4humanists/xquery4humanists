---
layout: page
title: Pp. 150 (no. 175)
permalink: /code/175-pp150/
---

This code sample is adapted from Clifford B. Anderson and Joseph C. Wicentowski, 
[_XQuery for Humanists_](/) (College Station: Texas A&M University Press, 2020), 150. 
Download this code sample in its [raw form](/code/175-pp150/175-pp150.xq).
View the source on [GitHub](https://github.com/coding4humanists/xquery4humanists/blob/master/code/175-pp150/175-pp150.xq).

```xquery
xquery version "3.1";

let $eastern := map { "eastern": ["China", "Russia", "Japan"] }
let $western := map { "western": ["Mexico", "Canada", "United States"] }
return
    map:merge(($eastern, $western))
```  
