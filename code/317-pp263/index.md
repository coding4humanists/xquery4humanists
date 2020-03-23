---
layout: page
title: Pp. 263 (no. 317)
permalink: /code/317-pp263/
---

This code sample is adapted from Clifford B. Anderson and Joseph C. Wicentowski, 
[_XQuery for Humanists_](/) (College Station: Texas A&M University Press, 2020), 263. 
Download this code sample in its [raw form](/code/317-pp263/317-pp263.xq).
View the source on [GitHub](https://github.com/coding4humanists/xquery4humanists/blob/release/code/317-pp263/317-pp263.xq).

```xquery
xquery version "3.1";

declare function local:fetch-data($URI as xs:string) as document-node() {
    fn:error(xs:QName("err:FODC0002"), "Error retrieving resource.")
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
