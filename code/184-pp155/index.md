---
layout: page
title: Pp. 155 (no. 184)
permalink: /code/184-pp155/
---

This code sample is adapted from Clifford B. Anderson and Joseph C. Wicentowski, 
[_XQuery for Humanists_](/) (College Station: Texas A&M University Press, 2020), 155. 
Download this code sample in its [raw form](/code/184-pp155/184-pp155.xq).
View the source on [GitHub](https://github.com/coding4humanists/xquery4humanists/blob/release/code/184-pp155/184-pp155.xq).

```xquery
xquery version "3.1";

let $sentence := "This is a a test of of windowing"
let $words := fn:tokenize($sentence, " ")
for tumbling window $w in $words
    start $start-word at $pos
    next $next-word
    when $start-word eq $next-word
return
    <duplicate position="{ $pos }">{ $start-word }</duplicate>
```  
