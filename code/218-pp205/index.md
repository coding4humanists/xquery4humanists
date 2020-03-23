---
layout: page
title: Pp. 205 (no. 218)
permalink: /code/218-pp205/
---

This code sample is adapted from Clifford B. Anderson and Joseph C. Wicentowski, 
[_XQuery for Humanists_](/) (College Station: Texas A&M University Press, 2020), 205. 
Download this code sample in its [raw form](/code/218-pp205/218-pp205.xq).
View the source on [GitHub](https://github.com/coding4humanists/xquery4humanists/blob/release/code/218-pp205/218-pp205.xq).

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
        insert node $chinese-title into $new
    return
        $new
return
    $copy
```  
