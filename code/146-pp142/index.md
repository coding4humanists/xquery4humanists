---
layout: page
title: Pp. 142 (no. 146)
permalink: /code/146-pp142/
---

This code sample is adapted from Clifford B. Anderson and Joseph C. Wicentowski, 
[_XQuery for Humanists_](/) (College Station: Texas A&M University Press, 2020), 142. 
Download this code sample in its [raw form](/code/146-pp142/146-pp142.xq).

```xquery
xquery version "3.1";

let $article :=
    map {
        "title": "On Teaching XQuery to Digital Humanists",
        "author": "https://orcid.org/0000-0003-0328-0792",
        "identifier": "10.4242/BalisageVol13.Anderson01"
    }
return
    $article?title
```  
