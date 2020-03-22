---
layout: page
title: Pp. 210 (no. 230)
permalink: /code/230-pp210/
---

This code sample is adapted from Clifford B. Anderson and Joseph C. Wicentowski, 
[_XQuery for Humanists_](/) (College Station: Texas A&M University Press, 2020), 210. 
Download this code sample in its [raw form](/code/230-pp210/230-pp210.xq).
View the source on [GitHub](https://github.com/coding4humanists/xquery4humanists/blob/master/code/230-pp210/230-pp210.xq).

```xquery
xquery version "3.1";

declare namespace html="http://www.w3.org/1999/xhtml";
declare namespace tei="http://www.tei-c.org/ns/1.0";

let $p := <html:p>This is a <html:b>short</html:b> paragraph.</html:p>
return
    copy $mutated-p := $p
    modify 
        rename node $mutated-p as "tei:p"
    return
        $mutated-p
```  
