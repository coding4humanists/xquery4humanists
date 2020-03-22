---
layout: page
title: Pp. 213 (no. 233)
permalink: /code/233-pp213/
---

This code sample is adapted from Clifford B. Anderson and Joseph C. Wicentowski, 
[_XQuery for Humanists_](/) (College Station: Texas A&M University Press, 2020), 213. 
Download this code sample in its [raw form](/code/233-pp213/233-pp213.xq).
View the source on [GitHub](https://github.com/coding4humanists/xquery4humanists/blob/master/code/233-pp213/233-pp213.xq).

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
        <birth when="735">c. 735</birth>
        <death when="0804-05-19"/>
    </person>
return
    $person transform with
        {
            insert node attribute sex { "M" } into .,
            delete node birth/@when,
            insert node attribute notAfter { "0736" } into birth,
            insert node attribute notBefore { "0734" } into birth,
            rename node residence/placeName/place as "region",
            replace value of node residence/placeName/place with "Kingdom of Northumbria"
        }
```  
