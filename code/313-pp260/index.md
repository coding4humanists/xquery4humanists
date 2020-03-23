---
layout: page
title: Pp. 260 (no. 313)
permalink: /code/313-pp260/
---

This code sample is adapted from Clifford B. Anderson and Joseph C. Wicentowski, 
[_XQuery for Humanists_](/) (College Station: Texas A&M University Press, 2020), 260. 
Download this code sample in its [raw form](/code/313-pp260/313-pp260.xq).
View the source on [GitHub](https://github.com/coding4humanists/xquery4humanists/blob/release/code/313-pp260/313-pp260.xq).

```xquery
xquery version "3.1";

declare function local:fetch-data($URI as xs:string) as document-node() {
    fn:error()
};

local:fetch-data("https://archive.org/metadata/heirofredclyffe00yong")
```  
