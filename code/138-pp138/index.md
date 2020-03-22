---
layout: page
title: Pp. 138 (no. 138)
permalink: /code/138-pp138/
---

This code sample is adapted from Clifford B. Anderson and Joseph C. Wicentowski, 
[_XQuery for Humanists_](/) (College Station: Texas A&M University Press, 2020), 138. 
Download this code sample in its [raw form](/code/138-pp138/138-pp138.xq).

```xquery
declare function local:find-string($test as xs:string?) as xs:string? {
    if ($test) then
        "I found a string"
    else 
        ()
};

local:find-string(())
```  
