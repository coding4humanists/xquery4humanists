---
layout: page
title: Pp. 279 (no. 334)
permalink: /code/334-pp279/
---

This code sample is adapted from Clifford B. Anderson and Joseph C. Wicentowski, 
[_XQuery for Humanists_](/) (College Station: Texas A&M University Press, 2020), 279. 
Download this code sample in its [raw form](/code/334-pp279/334-pp279.xq).
View the source on [GitHub](https://github.com/coding4humanists/xquery4humanists/blob/release/code/334-pp279/334-pp279.xq).

```xquery
xquery version "3.1";

let $json :=
    <map xmlns="http://www.w3.org/2005/xpath-functions">
        <string key="time">04:07:53 PM</string>
        <string key="date">08-30-2016</string>
        <number key="milliseconds_since_epoch">1472591273170</number>
    </map>
return
    fn:xml-to-json($json, map {"indent": true()})
```  
