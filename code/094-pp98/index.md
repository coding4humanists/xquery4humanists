---
layout: page
title: Pp. 98 (no. 94)
permalink: /code/094-pp98/
---

This code sample is adapted from Clifford B. Anderson and Joseph C. Wicentowski, 
[_XQuery for Humanists_](/) (College Station: Texas A&M University Press, 2020), 98. 
Download this code sample in its [raw form](/code/094-pp98/094-pp98.xq).
View the source on [GitHub](https://github.com/coding4humanists/xquery4humanists/blob/release/code/094-pp98/094-pp98.xq).

```xquery
xquery version "3.1";

declare context item := document {
<list>
    <book date="2015">Interdisciplining Digital Humanities</book>
    <book date="2013">Hacking the Academy</book>
    <book date="2016">New Companion to Digital Humanities</book>
    <book date="2013">Macroanalysis</book>
    <book date="2013">Emergence of the Digital Humanities</book>
    <book date="2014">Digital Critical Editions</book>
    <book date="2015">Digital Humanities</book>
</list>
};

declare variable $list := ./list;

let $sorted-books :=
    for $book in $list/book
    order by $book/text()
    return
        $book
for $book at $n in $sorted-books
return
    fn:concat($n, ". ", $book/text())
```  
