---
layout: page
title: Pp. 137 (no. 137)
permalink: /code/137-pp137/
---

This code sample is adapted from Clifford B. Anderson and Joseph C. Wicentowski, 
[_XQuery for Humanists_](/) (College Station: Texas A&M University Press, 2020), 137. 
Download this code sample in its [raw form](/code/137-pp137/137-pp137.xq).

```xquery
declare function local:find-string($test as xs:string?) as xs:string? {
    if ($test) then
        "I found a string"
    else 
        ()
};

local:find-string("test")
```  
