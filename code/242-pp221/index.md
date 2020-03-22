---
layout: page
title: Pp. 221 (no. 242)
permalink: /code/242-pp221/
---

This code sample is adapted from Clifford B. Anderson and Joseph C. Wicentowski, 
[_XQuery for Humanists_](/) (College Station: Texas A&M University Press, 2020), 221. 
Download this code sample in its [raw form](/code/242-pp221/242-pp221.xq).
View the source on [GitHub](https://github.com/coding4humanists/xquery4humanists/blob/master/code/242-pp221/242-pp221.xq).

```xquery
xquery version "3.1";

declare %updating function local:add-timestamp($doc) {
    if ($doc/book/timestamp) then
        replace value of node $doc/book/timestamp 
            with fn:current-dateTime()
    else
        insert node element timestamp { 
            fn:current-dateTime() } 
        into $doc/book
};

local:add-timestamp(fn:doc("book.xml"))
```  
