---
layout: page
title: Pp. 203 (no. 214)
permalink: /code/214-pp203/
---

This code sample is adapted from Clifford B. Anderson and Joseph C. Wicentowski, 
[_XQuery for Humanists_](/) (College Station: Texas A&M University Press, 2020), 203. 
Download this code sample in its [raw form](/code/214-pp203/214-pp203.xq).

```xquery
xquery version "3.1";

let $movie :=
    <movie>
        <title>The Piano</title>
        <director>Jane Campion</director>
        <date>1993</date>
    </movie>
let $title := <title>Piano, The</title>
return
    element movie { $title, $movie/* except $movie/title }
```  
