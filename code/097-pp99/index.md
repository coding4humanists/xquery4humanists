---
layout: page
title: Pp. 99 (no. 97)
permalink: /code/097-pp99/
---

This code sample is adapted from Clifford B. Anderson and Joseph C. Wicentowski, 
[_XQuery for Humanists_](/) (College Station: Texas A&M University Press, 2020), 99. 
Download this code sample in its [raw form](/code/097-pp99/097-pp99.xq).

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

for $book in $list/book
order by $book/@date descending, $book/text()
group by $date := $book/@date
return
    <list published="{ $date }">
        { $book }
    </list>
```  
