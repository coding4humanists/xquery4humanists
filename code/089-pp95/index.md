---
layout: page
title: Pp. 95 (no. 89)
permalink: /code/089-pp95/
---

This code sample is adapted from Clifford B. Anderson and Joseph C. Wicentowski, 
[_XQuery for Humanists_](/) (College Station: Texas A&M University Press, 2020), 95. 
Download this code sample in its [raw form](/code/089-pp95/089-pp95.xq).

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

let $books := $list/book
for $book in $books
order by $book/@date descending
return
    $book
```  
