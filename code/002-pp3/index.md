---
layout: page
title: Pp. 3 (no. 2)
permalink: /code/002-pp3/
---

This code sample is adapted from Clifford B. Anderson and Joseph C. Wicentowski, 
[_XQuery for Humanists_](/) (College Station: Texas A&M University Press, 2020), 3. 
Download this code sample in its [raw form](/code/002-pp3/002-pp3.xq).
View the source on [GitHub](https://github.com/coding4humanists/xquery4humanists/blob/release/code/002-pp3/002-pp3.xq).

```xquery
declare namespace tei="http://www.tei-c.org/ns/1.0";

declare context item := document {
<div xmlns="http://www.tei-c.org/ns/1.0" type="document" xml:id="d194">
    <head>Memorandum of Conversation</head>
    <dateline>
        <placeName target="beijing">Peking</placeName>, <date from="1972-02-21T14:50:00" to="1972-02-21T15:55:00">February 21,
            1972, 2:50–3:55 p.m.</date>
    </dateline>
    <sp who="mao-zd">
        <speaker>Chairman Mao</speaker>: <p>Our common old friend, Generalissimo
                <name target="chiang-ks">Chiang Kai-shek</name>, doesn’t approve
            of this. He calls us Communist bandits.</p>
    </sp>
    <sp who="nixon-rm">
        <speaker>President Nixon</speaker>: <p><name target="chiang-ks">Chiang
                Kai-shek</name> calls the Chairman a bandit. What does the
            Chairman call Not for reproduction or distribution him?</p>
    </sp>
</div>
};

//tei:sp
```  
