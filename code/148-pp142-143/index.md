---
layout: page
title: Pp. 142-143 (no. 148)
permalink: /code/148-pp142-143/
---

This code sample is adapted from Clifford B. Anderson and Joseph C. Wicentowski, 
[_XQuery for Humanists_](/) (College Station: Texas A&M University Press, 2020), 142-143. 
Download this code sample in its [raw form](/code/148-pp142-143/148-pp142-143.xq).
View the source on [GitHub](https://github.com/coding4humanists/xquery4humanists/blob/release/code/148-pp142-143/148-pp142-143.xq).

```xquery
xquery version "3.1";

let $key-to-look-up := "title"
let $article :=
    map {
        "title": "On Teaching XQuery to Digital Humanists",
        "author": "https://orcid.org/0000-0003-0328-0792",
        "identifier": "10.4242/BalisageVol13.Anderson01"
    }
return
    $article($key-to-look-up)
```  
