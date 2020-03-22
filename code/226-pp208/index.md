---
layout: page
title: Pp. 208 (no. 226)
permalink: /code/226-pp208/
---

This code sample is adapted from Clifford B. Anderson and Joseph C. Wicentowski, 
[_XQuery for Humanists_](/) (College Station: Texas A&M University Press, 2020), 208. 
Download this code sample in its [raw form](/code/226-pp208/226-pp208.xq).

```xquery
xquery version "3.1";

let $movie :=
    <movie>
        <title>Way of the Dragon</title>
        <director>Bruce Lee</director>
        <date>1972</date>
    </movie>
return
    copy $mutated-movie := $movie
    modify
        replace value of node $mutated-movie/director/text()
        with $mutated-movie/director/text() || " (1940-1973)"
    return
        $mutated-movie
```  
