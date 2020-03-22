---
layout: page
title: Pp. 115 (no. 113)
permalink: /code/113-pp115/
---

This code sample is adapted from Clifford B. Anderson and Joseph C. Wicentowski, 
[_XQuery for Humanists_](/) (College Station: Texas A&M University Press, 2020), 115. 
Download this code sample in its [raw form](/code/113-pp115/113-pp115.txt).
View the source on [GitHub](https://github.com/coding4humanists/xquery4humanists/blob/master/code/113-pp115/113-pp115.txt).

```text
xquery version "3.1";

declare namespace tei = "http://www.tei-c.org/ns/1.0";

declare function local:make-tei-title(
    $title as xs:string,
    $subtitle as xs:string?
    ) as element(tei:title) {
    (: the function will go here :)
};
```  
