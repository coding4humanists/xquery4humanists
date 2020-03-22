---
layout: page
title: Pp. 236 (no. 266)
permalink: /code/266-pp236/
---

This code sample is adapted from Clifford B. Anderson and Joseph C. Wicentowski, 
[_XQuery for Humanists_](/) (College Station: Texas A&M University Press, 2020), 236. 
Download this code sample in its [raw form](/code/266-pp236/266-pp236.xq).
View the source on [GitHub](https://github.com/coding4humanists/xquery4humanists/blob/master/code/266-pp236/266-pp236.xq).

```xquery
xquery version "3.1";

declare namespace tei="http://www.tei-c.org/ns/1.0";

declare variable $shells := 
    "She sells sea-shells on the sea-shore.
    The shells she sells are sea-shells, I'm sure.
    For if she sells sea-shells on the sea-shore
    Then I'm sure she sells sea-shore shells.";

$shells contains text "shells" occurs at least 2 times
```  
