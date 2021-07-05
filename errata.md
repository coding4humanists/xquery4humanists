---
layout: page
title: Errata
permalink: /errata/
category: top-level
---

All known errors in the text are listed below:

p. 54: 

- The namespace URI for the TEI sample, `http://www-tei-c.org/ns/1.0`, contains a typo between `www` and `tei`. The intended URI is `http://www.tei-c.org/ns/1.0`. [Credit to mschef](https://github.com/coding4humanists/xquery4humanists/pull/16). *(Posted July 5, 2021.)*

p. 108: 

- The expression `fn:normalize-space("Hello XQuery. How are you?")` should have spaces between "Hello" and "XQuery" and between "How" and "are"---to illustrate space normalizing. The intended expression is `fn:normalize-space("Hello   XQuery. How   are you?")`. *(Posted March 20, 2020.)*

p. 236:

- `contains` *text* should be `contains text`.  *(Posted March 20, 2020.)*

