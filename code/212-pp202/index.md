---
layout: page
title: Pp. 202 (no. 212)
permalink: /code/212-pp202/
---

This code sample is adapted from Clifford B. Anderson and Joseph C. Wicentowski, 
[_XQuery for Humanists_](/) (College Station: Texas A&M University Press, 2020), 202. 
Download this code sample in its [raw form](/code/212-pp202/212-pp202.xq).

```xquery
xquery version "3.1";

let $movie :=
    <movie>
        <title>The Piano</title>
        <director>Jane Campion</director>
        <date>1993</date>
    </movie>
let $rating := element rating { "R" } 
return
    element movie { $movie/* except $movie/date }

```  
