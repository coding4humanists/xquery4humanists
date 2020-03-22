---
layout: page
title: Pp. 143 (no. 149)
permalink: /code/149-pp143/
---

This code sample is adapted from Clifford B. Anderson and Joseph C. Wicentowski, 
[_XQuery for Humanists_](/) (College Station: Texas A&M University Press, 2020), 143. 
Download this code sample in its [raw form](/code/149-pp143/149-pp143.xq).
View the source on [GitHub](https://github.com/coding4humanists/xquery4humanists/blob/master/code/149-pp143/149-pp143.xq).

```xquery
xquery version "3.1";

let $keys := ("identifier", "author")
let $article :=
    map {
        "title": "On Teaching XQuery to Digital Humanists",
        "author": "https://orcid.org/0000-0003-0328-0792",
        "identifier": "10.4242/BalisageVol13.Anderson01"
    }
return
    $article?($keys)
```  
