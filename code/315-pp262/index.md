---
layout: page
title: Pp. 262 (no. 315)
permalink: /code/315-pp262/
---

This code sample is adapted from Clifford B. Anderson and Joseph C. Wicentowski, 
[_XQuery for Humanists_](/) (College Station: Texas A&M University Press, 2020), 262. 
Download this code sample in its [raw form](/code/315-pp262/315-pp262.xq).
View the source on [GitHub](https://github.com/coding4humanists/xquery4humanists/blob/master/code/315-pp262/315-pp262.xq).

```xquery
xquery version "3.1";

declare function local:fetch-data($URI as xs:string) as document-node() {
    fn:error()
};

try
    {
        local:fetch-data("https://archive.org/metadata/heirofredclyffe00yong")
    }
catch *
    {
        "I caught this error: " || $err:code ||
        " with this description: " || $err:description
    }
```  
