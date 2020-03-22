---
layout: page
title: Pp. 232 (no. 257)
permalink: /code/257-pp232/
---

This code sample is adapted from Clifford B. Anderson and Joseph C. Wicentowski, 
[_XQuery for Humanists_](/) (College Station: Texas A&M University Press, 2020), 232. 
Download this code sample in its [raw form](/code/257-pp232/257-pp232.xq).
View the source on [GitHub](https://github.com/coding4humanists/xquery4humanists/blob/master/code/257-pp232/257-pp232.xq).

```xquery
xquery version "3.1";

declare namespace tei="http://www.tei-c.org/ns/1.0";

declare variable $poem := <TEI xmlns="http://www.tei-c.org/ns/1.0">
    <teiHeader>
        <fileDesc>
            <titleStmt>
                <title>The Best Thing in the World</title>
                <author>Elizabeth Barrett Browning</author>
            </titleStmt>
            <publicationStmt>
                <p>The Poetical Works, Vol. IV</p>
            </publicationStmt>
            <sourceDesc>
                <p>Project Gutenberg</p>
            </sourceDesc>
        </fileDesc>
    </teiHeader>
    <text>
        <body>
            <l>What's the best thing in the world?</l>
            <l>June-rose, by May-dew impearled;</l>
            <l>Sweet south-wind, that means no rain;</l>
            <l>Truth, not cruel to a friend;</l>
            <l>Pleasure, not in haste to end;</l>
            <l>Beauty, not self-decked and curled</l>
            <l>Till its pride is over-plain;</l>
            <l>Light, that never makes you wink;</l>
            <l>Memory, that gives no pain;</l>
            <l>Love, when, so, you're loved again.</l>
            <l>What's the best thing in the world?</l>
            <l>—Something out of it, I think.</l>
        </body>
    </text>
</TEI>;

let $lines := $poem/tei:text/tei:body/tei:l
for $line in $lines
where $line contains text "Memory"
return
    $line
```  
