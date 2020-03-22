---
layout: page
title: Pp. 182-183 (no. 201)
permalink: /code/201-pp182-183/
---

This code sample is adapted from Clifford B. Anderson and Joseph C. Wicentowski, 
[_XQuery for Humanists_](/) (College Station: Texas A&M University Press, 2020), 182-183. 
Download this code sample in its [raw form](/code/201-pp182-183/201-pp182-183.xq).

```xquery
xquery version "3.1";

declare namespace tei="http://www.tei-c.org/ns/1.0";

declare variable $doc := <div xmlns="http://www.tei-c.org/ns/1.0">
    <p>Lincoln is dead! The body of the victim of a mad assassin has disappeared
        from the surface of the earth, but his spirit is immortal. This spirit
        soars above the tomb where rest the mortal remains of one who was—</p>
    <!-- Note: Citation needed -->
    <quote>
        <lg>
            <l>—“a man, a ruler, and a sage;</l>
            <l>A truly worthy model of the age.”</l>
        </lg>
    </quote>
</div>;

declare function local:transform($originals as node()*) {
    for $original in $originals
    return
        typeswitch ($original)
            case text() return
                $original
            case element(tei:div) return
                <div>{ local:transform($original/node()) }</div>
            case element(tei:p) return
                <p>{ local:transform($original/node()) }</p>
            case element(tei:quote) return
                <blockquote>
                    { local:transform($original/node()) }
                </blockquote>
            case element(tei:lg) return
                <p>{ local:transform($original/node()) }</p>
            case element(tei:l) return
                (
                    local:transform($original/node()),
                    if ($original/following-sibling::tei:l) then
                        <br/>
                    else 
                        ()
                )
            default return
                $original
};

local:transform($doc)
```  
