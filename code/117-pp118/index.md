---
layout: page
title: Pp. 118 (no. 117)
permalink: /code/117-pp118/
---

This code sample is adapted from Clifford B. Anderson and Joseph C. Wicentowski, 
[_XQuery for Humanists_](/) (College Station: Texas A&M University Press, 2020), 118. 
Download this code sample in its [raw form](/code/117-pp118/117-pp118.xq).
View the source on [GitHub](https://github.com/coding4humanists/xquery4humanists/blob/release/code/117-pp118/117-pp118.xq).

```xquery
let $title := "Citizens at Last"
let $subtitle := "The Woman Suffrage Movement in Texas"
let $join-titles :=
    function($title as xs:string, $subtitle as xs:string)
        as xs:string {
        fn:concat($title, ": ", $subtitle)
    }
return
    $join-titles($title, $subtitle)
```  
