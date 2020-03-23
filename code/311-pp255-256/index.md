---
layout: page
title: Pp. 255-256 (no. 311)
permalink: /code/311-pp255-256/
---

This code sample is adapted from Clifford B. Anderson and Joseph C. Wicentowski, 
[_XQuery for Humanists_](/) (College Station: Texas A&M University Press, 2020), 255-256. 
Download this code sample in its [raw form](/code/311-pp255-256/311-pp255-256.xq).
View the source on [GitHub](https://github.com/coding4humanists/xquery4humanists/blob/release/code/311-pp255-256/311-pp255-256.xq).

```xquery
xquery version "3.1";

(:~
: The purpose of this module is to greet XQuery
enthusiasts
:
: @author Clifford B. Anderson
: @version 1.0
: @see http://xquery.forhumanists.org/
:)
module namespace greet = "http://xquery.forhumanists.org/greet";

(:~
: This function expresses a friendly greeting
: @param $name The name of the person to be saluted
: @return An English-language salutation
:)
declare function greet:say-hello($name as xs:string?) as xs:string {
    "Hello, " || $name || "!"
};
```  
