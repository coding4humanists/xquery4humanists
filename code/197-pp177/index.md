---
layout: page
title: Pp. 177 (no. 197)
permalink: /code/197-pp177/
---

This code sample is adapted from Clifford B. Anderson and Joseph C. Wicentowski, 
[_XQuery for Humanists_](/) (College Station: Texas A&M University Press, 2020), 177. 
Download this code sample in its [raw form](/code/197-pp177/197-pp177.xq).
View the source on [GitHub](https://github.com/coding4humanists/xquery4humanists/blob/master/code/197-pp177/197-pp177.xq).

```xquery
xquery version "3.1";

declare function local:is-palindrome($phrase as xs:string?) as xs:boolean {
    let $all-letters-as-codepoints := fn:string-to-codepoints($phrase)
    let $first-letter := $all-letters-as-codepoints[1]
    let $last-letter := $all-letters-as-codepoints[last()]
    return
        (: Base case 1: Even number of letters; all pairs match; none left, so yes! :)
        if (fn:empty($first-letter)) then
            true()
        (: Base case 2: Letters do not match, so no, this is not a palindrome. :)
        else if ($first-letter ne $last-letter) then
            false()
        (: Recursive case: Letters do match, so check the next pair :)
        else
            let $new-letters := $all-letters-as-codepoints
                [position() = 2 to last() - 1]
            let $new-phrase := fn:codepoints-to-string($new-letters)
            return
                local:is-palindrome($new-phrase)
};

local:is-palindrome("racecar")
```  
