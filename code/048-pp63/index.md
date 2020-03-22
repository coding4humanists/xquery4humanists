---
layout: page
title: Pp. 63 (no. 48)
permalink: /code/048-pp63/
---

This code sample is adapted from Clifford B. Anderson and Joseph C. Wicentowski, 
[_XQuery for Humanists_](/) (College Station: Texas A&M University Press, 2020), 63. 
Download this code sample in its [raw form](/code/048-pp63/048-pp63.xq).

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

//identifier[self::node() = "0300137230"]/preceding-sibling::title
```  
