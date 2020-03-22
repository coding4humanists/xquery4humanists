---
layout: page
title: Pp. 205 (no. 216)
permalink: /code/216-pp205/
---

This code sample is adapted from Clifford B. Anderson and Joseph C. Wicentowski, 
[_XQuery for Humanists_](/) (College Station: Texas A&M University Press, 2020), 205. 
Download this code sample in its [raw form](/code/216-pp205/216-pp205.xq).

```xquery
xquery version "3.1";

let $original :=
    <movie>
        <title>Way of the Dragon</title>
        <director>Bruce Lee</director>
        <date>1972</date>
    </movie>
let $chinese-title :=
    <title alt="Chinese">猛龍過江</title>
let $copy :=
    copy $new := $original
    modify
        insert node $chinese-title after $new/title
    return
        $new
return
    $copy
```  
