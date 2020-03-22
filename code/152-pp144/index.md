---
layout: page
title: Pp. 144 (no. 152)
permalink: /code/152-pp144/
---

This code sample is adapted from Clifford B. Anderson and Joseph C. Wicentowski, 
[_XQuery for Humanists_](/) (College Station: Texas A&M University Press, 2020), 144. 
Download this code sample in its [raw form](/code/152-pp144/152-pp144.xq).
View the source on [GitHub](https://github.com/coding4humanists/xquery4humanists/blob/master/code/152-pp144/152-pp144.xq).

```xquery
let $titles :=
    map {
        "titles": map {
            "english": "On Teaching XQuery to Digital Humanists",
            "chinese": "如何給數位人文研究者教 XQuery"
        }
    }
return
    map:find($titles, "chinese")
```  
