---
layout: page
title: Pp. 236 (no. 269)
permalink: /code/269-pp236/
---

This code sample is adapted from Clifford B. Anderson and Joseph C. Wicentowski, 
[_XQuery for Humanists_](/) (College Station: Texas A&M University Press, 2020), 236. 
Download this code sample in its [raw form](/code/269-pp236/269-pp236.xq).

```xquery
xquery version "3.1";

declare namespace tei="http://www.tei-c.org/ns/1.0";

declare variable $shells := 
    "She sells sea-shells on the sea-shore.
    The shells she sells are sea-shells, I'm sure.
    For if she sells sea-shells on the sea-shore
    Then I'm sure she sells sea-shore shells.";

$shells contains text "shells" occurs from 2 to 6 times
```  
