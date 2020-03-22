---
layout: page
title: Pp. 292 (no. 345) - referenced data file
permalink: /code/345-pp292/books-xsl/
---

This code sample is adapted from Clifford B. Anderson and Joseph C. Wicentowski, 
[_XQuery for Humanists_](/) (College Station: Texas A&M University Press, 2020), 292. 
Download this code sample in its [raw form](/code/345-pp292/books-xsl/books.xsl).

```xml
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="2.0">
    <xsl:template match="/">
        <table>
            <tr>
                <th>Title</th>
                <th>Author</th>
            </tr>
            <tr>
                <td><xsl:value-of select="csv/row/Title"/></td>
                <td><xsl:value-of select="csv/row/Author"/></td>
            </tr>
        </table>
    </xsl:template>
</xsl:stylesheet>
```
