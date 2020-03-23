---
layout: page
title: Pp. 261 (no. 314)
permalink: /code/314-pp261/
---

This code sample is adapted from Clifford B. Anderson and Joseph C. Wicentowski, 
[_XQuery for Humanists_](/) (College Station: Texas A&M University Press, 2020), 261. 
Download this code sample in its [raw form](/code/314-pp261/314-pp261.xq).
View the source on [GitHub](https://github.com/coding4humanists/xquery4humanists/blob/release/code/314-pp261/314-pp261.xq).

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
    { "I caught an error!" }
```  
