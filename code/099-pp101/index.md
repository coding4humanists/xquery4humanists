---
layout: page
title: Pp. 101 (no. 99)
permalink: /code/099-pp101/
---

This code sample is adapted from Clifford B. Anderson and Joseph C. Wicentowski, 
[_XQuery for Humanists_](/) (College Station: Texas A&M University Press, 2020), 101. 
Download this code sample in its [raw form](/code/099-pp101/099-pp101.xq).
View the source on [GitHub](https://github.com/coding4humanists/xquery4humanists/blob/master/code/099-pp101/099-pp101.xq).

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

let $titles := $list/book/text()
let $phrase := "Digital Humanities"
for $title in $titles
return
    if (fn:contains($title, $phrase)) then
        "A book about Digital Humanities"
    else
        "A book about something else"
```  
