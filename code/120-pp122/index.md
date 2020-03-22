---
layout: page
title: Pp. 122 (no. 120)
permalink: /code/120-pp122/
---

This code sample is adapted from Clifford B. Anderson and Joseph C. Wicentowski, 
[_XQuery for Humanists_](/) (College Station: Texas A&M University Press, 2020), 122. 
Download this code sample in its [raw form](/code/120-pp122/120-pp122.txt).
View the source on [GitHub](https://github.com/coding4humanists/xquery4humanists/blob/master/code/120-pp122/120-pp122.txt).

```text
xquery version "3.1";

module namespace tf = "http://xquery.forhumanists.org/tei-functions";

declare namespace tei = "http://www.tei-c.org/ns/1.0";

declare function tf:make-tei-title(
    $title as xs:string,
    $subtitle as xs:string?)
    as element(tei:title) {
    <title type="full" xmlns="http://www.tei-c.org/ns/1.0">
        <title type="main">{ $title }</title>
        <title type="sub">{ $subtitle }</title>
    </title>
};
```  
