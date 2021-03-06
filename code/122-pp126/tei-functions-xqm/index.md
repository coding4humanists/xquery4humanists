---
layout: page
title: Pp. 126 (no. 122) - imported library module
permalink: /code/122-pp126/tei-functions-xqm/
---

This code sample is adapted from Clifford B. Anderson and Joseph C. Wicentowski, 
[_XQuery for Humanists_](/) (College Station: Texas A&M University Press, 2020), 126. 
Download this code sample in its [raw form](/code/122-pp126/tei-functions-xqm/tei-functions.xqm).
View the source on [GitHub](https://github.com/coding4humanists/xquery4humanists/blob/release/code/122-pp126/tei-functions-xqm/tei-functions.xqm).

```xquery
xquery version "3.1";

module namespace tf = "http://xquery.forhumanists.org/tei-functions";

import module namespace functx = "http://www.functx.com"
    at "http://www.xqueryfunctions.com/xq/functx-1.0-doc-2007-01.xq";

declare namespace tei = "http://www.tei-c.org/ns/1.0";

declare %public function tf:make-tei-title(
    $title as xs:string,
    $subtitle as xs:string?)
    as element(tei:title) {
    <title type="full" xmlns="http://www.tei-c.org/ns/1.0">
        <title type="main">{ tf:capitalize($title) }</title>
        <title type="sub">{ tf:capitalize($subtitle) }</title>
    </title>
};

declare %private function tf:capitalize($title as xs:string?)
    as xs:string? {
    let $title := fn:lower-case($title)
    let $words := fn:tokenize($title, " ")
    let $words :=
    for $word in $words
        let $word := functx:capitalize-first($word)
        return
            $word
    return
        fn:string-join($words, " ")
};
```  
