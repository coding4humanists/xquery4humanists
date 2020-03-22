---
layout: page
title: Pp. 264 (no. 319)
permalink: /code/319-pp264/
---

This code sample is adapted from Clifford B. Anderson and Joseph C. Wicentowski, 
[_XQuery for Humanists_](/) (College Station: Texas A&M University Press, 2020), 264. 
Download this code sample in its [raw form](/code/319-pp264/319-pp264.xq).
View the source on [GitHub](https://github.com/coding4humanists/xquery4humanists/blob/master/code/319-pp264/319-pp264.xq).

```xquery
xquery version "3.1";

declare function local:fetch-data($URI as xs:string) as document-node() {
    fn:error(xs:QName("err:FODC0002"), "Error retrieving resource.")
};

try 
    { 
        local:fetch-data("https://archive.org/metadata/heirofredclyffe00yong") 
    }
catch err:FODC0002 { "The web service failed." }
catch * { "Something else happened!" }
```  
