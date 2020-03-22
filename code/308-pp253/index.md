---
layout: page
title: Pp. 253 (no. 308)
permalink: /code/308-pp253/
---

This code sample is adapted from Clifford B. Anderson and Joseph C. Wicentowski, 
[_XQuery for Humanists_](/) (College Station: Texas A&M University Press, 2020), 253. 
Download this code sample in its [raw form](/code/308-pp253/308-pp253.txt).
View the source on [GitHub](https://github.com/coding4humanists/xquery4humanists/blob/master/code/308-pp253/308-pp253.txt).

```text
declare function local:generate-uri($resource as xs:integer?)
    as xs:string {
    "http://forhumanists.org/" || xs:string($resource)
};
```  
