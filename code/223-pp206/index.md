---
layout: page
title: Pp. 206 (no. 223)
permalink: /code/223-pp206/
---

This code sample is adapted from Clifford B. Anderson and Joseph C. Wicentowski, 
[_XQuery for Humanists_](/) (College Station: Texas A&M University Press, 2020), 206. 
Download this code sample in its [raw form](/code/223-pp206/223-pp206.xq).

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
        delete nodes $mutated-movie/* except $mutated-movie/date
    return
        $mutated-movie
```  
