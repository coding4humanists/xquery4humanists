---
layout: page
title: Pp. 278 (no. 331)
permalink: /code/331-pp278/
---

This code sample is adapted from Clifford B. Anderson and Joseph C. Wicentowski, 
[_XQuery for Humanists_](/) (College Station: Texas A&M University Press, 2020), 278. 
Download this code sample in its [raw form](/code/331-pp278/331-pp278.xq).

```xquery
xquery version "3.1";

declare namespace output="http://www.w3.org/2010/xslt-xquery-serialization";

declare option output:method "json";
declare option output:media-type "application/json";
declare option output:indent "yes";

declare function local:milliseconds-since-epoch($now as xs:dateTime) 
    as xs:integer {
    let $epoch := xs:dateTime("1970-01-01T00:00:00Z")
    let $duration-since-epoch := $now - $epoch
    let $milliseconds-since-epoch :=
        $duration-since-epoch div xs:dayTimeDuration("PT0.001S")
    return
        $milliseconds-since-epoch cast as xs:integer
};

let $date := fn:format-date(fn:current-date(), "[M01]-[D01]-[Y0001]")
let $time := fn:format-time(fn:current-time(), "[h01]:[m01]:[s01] [PN]")
let $epoch := local:milliseconds-since-epoch(fn:current-dateTime())
return
    map {
        "time": $time,
        "date": $date,
        "milliseconds_since_epoch": $epoch
    }
```  
