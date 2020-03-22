---
layout: page
title: Pp. 227 (no. 252)
permalink: /code/252-pp227/
---

This code sample is adapted from Clifford B. Anderson and Joseph C. Wicentowski, 
[_XQuery for Humanists_](/) (College Station: Texas A&M University Press, 2020), 227. 
Download this code sample in its [raw form](/code/252-pp227/252-pp227.xq).
View the source on [GitHub](https://github.com/coding4humanists/xquery4humanists/blob/master/code/252-pp227/252-pp227.xq).

```xquery
xquery version "3.1";

declare variable $text := "Among other public buildings in a certain town,
    which for many reasons it will be prudent to refrain from
    mentioning, and to which I will assign no fictitious name,
    there is one anciently common to most towns, great or small:
    to wit, a workhouse; and in this workhouse was born; on a day
    and date which I need not trouble myself to repeat, inasmuch
    as it can be of no possible consequence to the reader, in this
    stage of the business at all events; the item of mortality
    whose name is prefixed to the head of this chapter.";

fn:matches($text, "head of this chapter\.?$")
```  
