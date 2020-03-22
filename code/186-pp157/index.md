---
layout: page
title: Pp. 157 (no. 186)
permalink: /code/186-pp157/
---

This code sample is adapted from Clifford B. Anderson and Joseph C. Wicentowski, 
[_XQuery for Humanists_](/) (College Station: Texas A&M University Press, 2020), 157. 
Download this code sample in its [raw form](/code/186-pp157/186-pp157.xq).

```xquery
xquery version "3.1";

let $sentence := "I hope you have a nice day!"
let $tokens := fn:tokenize($sentence, " ")
let $ngram-length := 3

for sliding window $ngram in $tokens
    start at $starting-pos 
        when true()
    only end at $ending-pos
        when $ending-pos - $starting-pos + 1 eq $ngram-length
return
    <ngram>{ $ngram }</ngram>
```  
