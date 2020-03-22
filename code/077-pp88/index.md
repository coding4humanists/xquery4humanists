---
layout: page
title: Pp. 88 (no. 77)
permalink: /code/077-pp88/
---

This code sample is adapted from Clifford B. Anderson and Joseph C. Wicentowski, 
[_XQuery for Humanists_](/) (College Station: Texas A&M University Press, 2020), 88. 
Download this code sample in its [raw form](/code/077-pp88/077-pp88.xq).

```xquery
xquery version "3.1";

declare context item := document {
<book>
    <title>Primo Levi: The Matter of a Life</title>
    <author>Berel Lang</author>
    <date year="2013">November 26, 2013</date>
    <publisher>
        <city>New Haven</city>
        <press>Yale University Press</press>
    </publisher>
    <identifier type="ISBN-10">0300137230</identifier>
    <identifier type="ISBN-13">978-0300137231</identifier>
</book>
};

declare variable $book := ./book;

let $isbn1 := $book/identifier[1]
let $isbn2 := $book/identifier[2]
return
(
    fn:concat( fn:string($isbn1/@type), $isbn1/text() ),
    fn:concat( fn:string($isbn2/@type), $isbn2/text() )
)
```  
