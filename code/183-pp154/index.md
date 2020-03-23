---
layout: page
title: Pp. 154 (no. 183)
permalink: /code/183-pp154/
---

This code sample is adapted from Clifford B. Anderson and Joseph C. Wicentowski, 
[_XQuery for Humanists_](/) (College Station: Texas A&M University Press, 2020), 154. 
Download this code sample in its [raw form](/code/183-pp154/183-pp154.xq).
View the source on [GitHub](https://github.com/coding4humanists/xquery4humanists/blob/release/code/183-pp154/183-pp154.xq).

```xquery
let $zip-codes :=
    <zip-codes city="Nashville">
        <zip-code>37027</zip-code>
        <zip-code>37210</zip-code>
        <zip-code>37209</zip-code>
        <zip-code>37212</zip-code>
    </zip-codes>
let $city :=$zip-codes/@city
for $zip-code in $zip-codes/zip-code
return
    $zip-code/text()
```  
