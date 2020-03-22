---
layout: page
title: Pp. 143-144 (no. 151)
permalink: /code/151-pp143-144/
---

This code sample is adapted from Clifford B. Anderson and Joseph C. Wicentowski, 
[_XQuery for Humanists_](/) (College Station: Texas A&M University Press, 2020), 143-144. 
Download this code sample in its [raw form](/code/151-pp143-144/151-pp143-144.xq).
View the source on [GitHub](https://github.com/coding4humanists/xquery4humanists/blob/master/code/151-pp143-144/151-pp143-144.xq).

```xquery
let $article := 
    map {
        "titles": map {
            "english": "On Teaching XQuery to Digital Humanists",
            "chinese": "如何給數位人文研究者教 XQuery"
            }
    }
return
    $article?titles?chinese
```  
