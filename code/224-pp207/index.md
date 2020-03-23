---
layout: page
title: Pp. 207 (no. 224)
permalink: /code/224-pp207/
---

This code sample is adapted from Clifford B. Anderson and Joseph C. Wicentowski, 
[_XQuery for Humanists_](/) (College Station: Texas A&M University Press, 2020), 207. 
Download this code sample in its [raw form](/code/224-pp207/224-pp207.xq).
View the source on [GitHub](https://github.com/coding4humanists/xquery4humanists/blob/release/code/224-pp207/224-pp207.xq).

```xquery
xquery version "3.1";

let $movie :=
    <movie>
        <title>Way of the Dragon</title>
        <director>Bruce Lee</director>
        <date>1972</date>
    </movie>
let $title := <title>Return of the Dragon</title>
return
    copy $mutated-movie := $movie
    modify
        replace node $mutated-movie/title with $title
    return
        $mutated-movie
```  
