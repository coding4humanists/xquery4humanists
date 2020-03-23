---
layout: page
title: Pp. 292 (no. 344)
permalink: /code/344-pp292/
---

This code sample is adapted from Clifford B. Anderson and Joseph C. Wicentowski, 
[_XQuery for Humanists_](/) (College Station: Texas A&M University Press, 2020), 292. 
Download this code sample in its [raw form](/code/344-pp292/344-pp292.xml).
View the source on [GitHub](https://github.com/coding4humanists/xquery4humanists/blob/release/code/344-pp292/344-pp292.xml).

```xml
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="2.0">
    <xsl:template match="/">
        <table>
            <tr>
                <th>Title</th>
                <th>Author</th>
            </tr>
            <xsl:apply-templates/>
        </table>
    </xsl:template>
    <xsl:template match="row">
        <tr>
            <td><xsl:value-of select="Title"/></td>
            <td><xsl:value-of select="Author"/></td>
        </tr>
    </xsl:template>
</xsl:stylesheet>
```  
