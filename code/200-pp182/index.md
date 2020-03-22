---
layout: page
title: Pp. 182 (no. 200)
permalink: /code/200-pp182/
---

This code sample is adapted from Clifford B. Anderson and Joseph C. Wicentowski, 
[_XQuery for Humanists_](/) (College Station: Texas A&M University Press, 2020), 182. 
Download this code sample in its [raw form](/code/200-pp182/200-pp182.txt).

```text
typeswitch ($original)
    case text() return
        (: Don’t change the text :)
    case element(tei:div) return
        (: Create an HTML <div> element, and apply these rules to any child nodes :)
    case element(tei:p) return
        (: Create an HTML <p> element, and apply these rules to any child nodes :)
    case element(tei:quote) return
        (: Create an HTML <blockquote> element, and apply these rules to any child nodes :)
    case element(tei:lg) return
        (: Create an HTML <lg> element, and apply these rules to any child nodes :)
    case element(tei:l) return
        (: Create an HTML <l> element, and apply these rules to any child nodes :)
    default return
        (: Keep these as is too :)
```  
