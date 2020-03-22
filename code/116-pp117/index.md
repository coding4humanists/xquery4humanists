---
layout: page
title: Pp. 117 (no. 116)
permalink: /code/116-pp117/
---

This code sample is adapted from Clifford B. Anderson and Joseph C. Wicentowski, 
[_XQuery for Humanists_](/) (College Station: Texas A&M University Press, 2020), 117. 
Download this code sample in its [raw form](/code/116-pp117/116-pp117.xq).

```xquery
xquery version "3.1";

declare namespace tei = "http://www.tei-c.org/ns/1.0";

declare function local:make-tei-title($title, $subtitle) {
    <title type="full" xmlns="http://www.tei-c.org/ns/1.0">
        <title type="main">{ $title }</title>
        <title type="sub">{ $subtitle }</title>
    </title>
};

local:make-tei-title(
    <title>Citizens at Last</title>,
    ("The Woman Suffrage Movement in Texas", "and Tennessee")
)
```  
