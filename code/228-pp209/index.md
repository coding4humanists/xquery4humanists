---
layout: page
title: Pp. 209 (no. 228)
permalink: /code/228-pp209/
---

This code sample is adapted from Clifford B. Anderson and Joseph C. Wicentowski, 
[_XQuery for Humanists_](/) (College Station: Texas A&M University Press, 2020), 209. 
Download this code sample in its [raw form](/code/228-pp209/228-pp209.xq).
View the source on [GitHub](https://github.com/coding4humanists/xquery4humanists/blob/master/code/228-pp209/228-pp209.xq).

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
        rename node $mutated-movie as "film"
    return
        $mutated-movie
```  
