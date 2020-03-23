---
layout: page
title: Pp. 62 (no. 43)
permalink: /code/043-pp62/
---

This code sample is adapted from Clifford B. Anderson and Joseph C. Wicentowski, 
[_XQuery for Humanists_](/) (College Station: Texas A&M University Press, 2020), 62. 
Download this code sample in its [raw form](/code/043-pp62/043-pp62.xq).
View the source on [GitHub](https://github.com/coding4humanists/xquery4humanists/blob/release/code/043-pp62/043-pp62.xq).

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

/book/title
```  
