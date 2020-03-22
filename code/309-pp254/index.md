---
layout: page
title: Pp. 254 (no. 309)
permalink: /code/309-pp254/
---

This code sample is adapted from Clifford B. Anderson and Joseph C. Wicentowski, 
[_XQuery for Humanists_](/) (College Station: Texas A&M University Press, 2020), 254. 
Download this code sample in its [raw form](/code/309-pp254/309-pp254.txt).

```text
(: This function returns a URL (as a string) to a resource;
: resources are always made available as integers in the form:
: http://forhumanists.org/1, etc. :)
declare function local:generate-uri($resource as xs:integer?) as xs:string {
    "http://forhumanists.org/" || xs:string($resource)
};
```  
