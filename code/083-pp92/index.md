---
layout: page
title: Pp. 92 (no. 83)
permalink: /code/083-pp92/
---

This code sample is adapted from Clifford B. Anderson and Joseph C. Wicentowski, 
[_XQuery for Humanists_](/) (College Station: Texas A&M University Press, 2020), 92. 
Download this code sample in its [raw form](/code/083-pp92/083-pp92.xq).
View the source on [GitHub](https://github.com/coding4humanists/xquery4humanists/blob/release/code/083-pp92/083-pp92.xq).

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
    <identifier type="OCLC">840803708</identifier>
</book>
};

declare variable $book := ./book;

$book/identifier/@type = ("ISBN-10", "ISBN-13")
```  
