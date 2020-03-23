---
layout: page
title: Pp. 253 (no. 307)
permalink: /code/307-pp253/
---

This code sample is adapted from Clifford B. Anderson and Joseph C. Wicentowski, 
[_XQuery for Humanists_](/) (College Station: Texas A&M University Press, 2020), 253. 
Download this code sample in its [raw form](/code/307-pp253/307-pp253.txt).
View the source on [GitHub](https://github.com/coding4humanists/xquery4humanists/blob/release/code/307-pp253/307-pp253.txt).

```text
declare function local:generate-uri($resource) {
    "http://forhumanists.org/" || $resource
};
```  
