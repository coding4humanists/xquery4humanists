---
layout: page
title: Pp. 211-212 (no. 232)
permalink: /code/232-pp211-212/
---

This code sample is adapted from Clifford B. Anderson and Joseph C. Wicentowski, 
[_XQuery for Humanists_](/) (College Station: Texas A&M University Press, 2020), 211-212. 
Download this code sample in its [raw form](/code/232-pp211-212/232-pp211-212.xq).
View the source on [GitHub](https://github.com/coding4humanists/xquery4humanists/blob/master/code/232-pp211-212/232-pp211-212.xq).

```xquery
xquery version "3.1";

let $person :=
    <person xml:id="alcuin_of_york">
        <persName>Alcuin of York</persName>
        <residence>
            <placeName>
                <place>Northumbria</place>
            </placeName>
        </residence>
        <birth when="0735">c. 735</birth>
        <death when="0804-05-19"/>
    </person>
return
    $person transform with 
        { insert node attribute sex { "M" } into . }
```  
