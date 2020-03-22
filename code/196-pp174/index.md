---
layout: page
title: Pp. 174 (no. 196)
permalink: /code/196-pp174/
---

This code sample is adapted from Clifford B. Anderson and Joseph C. Wicentowski, 
[_XQuery for Humanists_](/) (College Station: Texas A&M University Press, 2020), 174. 
Download this code sample in its [raw form](/code/196-pp174/196-pp174.xq).
View the source on [GitHub](https://github.com/coding4humanists/xquery4humanists/blob/master/code/196-pp174/196-pp174.xq).

```xquery
xquery version "3.1";

let $phrase := "When in the course of human events,
    it becomes necessary for one people to dissolve the
    political bands which have connected them with another,
    and to assume among the powers of the earth, the
    separate and equal station to which the Laws of Nature
    and of Nature’s God entitle them, a decent respect
    to the opinions of mankind requires that they should
    declare the causes which impel them to the separation."
let $words := fn:tokenize($phrase, "\s+") ! fn:replace(., "\W", "")
let $cumulative-total := 0
let $add-string-function :=
    function(
        $cumulative-length as xs:integer,
        $current-string as xs:string*
    ) as xs:integer? {
        fn:string-length($current-string) + $cumulative-length
    }
return
    fn:fold-left($words, $cumulative-total, $add-string-function)
        div fn:count($words)
```  
