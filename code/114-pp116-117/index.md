---
layout: page
title: Pp. 116-117 (no. 114)
permalink: /code/114-pp116-117/
---

This code sample is adapted from Clifford B. Anderson and Joseph C. Wicentowski, 
[_XQuery for Humanists_](/) (College Station: Texas A&M University Press, 2020), 116-117. 
Download this code sample in its [raw form](/code/114-pp116-117/114-pp116-117.xq).

```xquery
xquery version "3.1";

declare namespace tei = "http://www.tei-c.org/ns/1.0";

declare function local:make-tei-title(
    $title as xs:string,
    $subtitle as xs:string?
    ) as element(tei:title) {
    <title type="full" xmlns="http://www.tei-c.org/ns/1.0">
        <title type="main">{ $title }</title>
        <title type="sub">{ $subtitle }</title>
    </title>
};

local:make-tei-title("Citizens at Last","The Woman Suffrage Movement in Texas")
```  
