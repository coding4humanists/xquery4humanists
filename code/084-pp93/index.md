---
layout: page
title: Pp. 93 (no. 84)
permalink: /code/084-pp93/
---

This code sample is adapted from Clifford B. Anderson and Joseph C. Wicentowski, 
[_XQuery for Humanists_](/) (College Station: Texas A&M University Press, 2020), 93. 
Download this code sample in its [raw form](/code/084-pp93/084-pp93.xq).

```xquery
xquery version "3.1";

let $title := <title>se questo è un uomo</title>
let $titolo := <title>se questo è un uomo</title>
let $titel := $title
return
    $title is $titolo
```  
