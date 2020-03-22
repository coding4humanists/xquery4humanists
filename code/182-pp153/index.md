---
layout: page
title: Pp. 153 (no. 182)
permalink: /code/182-pp153/
---

This code sample is adapted from Clifford B. Anderson and Joseph C. Wicentowski, 
[_XQuery for Humanists_](/) (College Station: Texas A&M University Press, 2020), 153. 
Download this code sample in its [raw form](/code/182-pp153/182-pp153.xq).
View the source on [GitHub](https://github.com/coding4humanists/xquery4humanists/blob/master/code/182-pp153/182-pp153.xq).

```xquery
let $zip-codes :=
    <zip-codes city="Nashville">
        <zip-code>37027</zip-code>
        <zip-code>37210</zip-code>
        <zip-code>37209</zip-code>
        <zip-code>37212</zip-code>
    </zip-codes>
for $zip-code in $zip-codes/zip-code
return
    $zip-code/text()
```  
