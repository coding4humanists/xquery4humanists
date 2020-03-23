---
layout: page
title: Pp. 203-204 (no. 215)
permalink: /code/215-pp203-204/
---

This code sample is adapted from Clifford B. Anderson and Joseph C. Wicentowski, 
[_XQuery for Humanists_](/) (College Station: Texas A&M University Press, 2020), 203-204. 
Download this code sample in its [raw form](/code/215-pp203-204/215-pp203-204.xq).
View the source on [GitHub](https://github.com/coding4humanists/xquery4humanists/blob/release/code/215-pp203-204/215-pp203-204.xq).

```xquery
xquery version "3.1";

let $movie := <movie alt-title="Return of the Dragon">Way of the Dragon</movie> 
return
    element movie { $movie/@*, "Dragon, Way of the" }
```  
