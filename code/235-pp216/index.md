---
layout: page
title: Pp. 216 (no. 235)
permalink: /code/235-pp216/
---

This code sample is adapted from Clifford B. Anderson and Joseph C. Wicentowski, 
[_XQuery for Humanists_](/) (College Station: Texas A&M University Press, 2020), 216. 
Download this code sample in its [raw form](/code/235-pp216/235-pp216.xq).
View the source on [GitHub](https://github.com/coding4humanists/xquery4humanists/blob/master/code/235-pp216/235-pp216.xq).

```xquery
xquery version "3.1";

let $doc :=
    <book>
        <title>Version Control: A Novel</title>
        <author>Palmer, Dexter</author>
        <date>2016</date>
    </book>
return
    fn:put($doc, "book.xml")
```  
