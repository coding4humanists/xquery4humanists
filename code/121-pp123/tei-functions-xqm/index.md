---
layout: page
title: Pp. 123 (no. 121) - imported library module
permalink: /code/121-pp123/tei-functions-xqm/
---

This code sample is adapted from Clifford B. Anderson and Joseph C. Wicentowski, 
[_XQuery for Humanists_](/) (College Station: Texas A&M University Press, 2020), 123. 
Download this code sample in its [raw form](/code/121-pp123/tei-functions-xqm/tei-functions.xqm).
View the source on [GitHub](https://github.com/coding4humanists/xquery4humanists/blob/master/code/121-pp123/tei-functions-xqm/tei-functions.xqm).

```xquery
xquery version "3.1";

module namespace tf = "http://xquery.forhumanists.org/tei-functions";

import module namespace functx = "http://www.functx.com"
    at "http://www.xqueryfunctions.com/xq/functx-1.0-doc-2007-01.xq";

declare namespace tei = "http://www.tei-c.org/ns/1.0";

declare function tf:make-tei-title(
    $title as xs:string,
    $subtitle as xs:string?
    ) as element(tei:title) {
    <title type="full" xmlns="http://www.tei-c.org/ns/1.0">
        <title type="main">{ functx:capitalize-first($title) }</title>
        <title type="sub">{ functx:capitalize-first($subtitle) }</title>
    </title>
};
```  
