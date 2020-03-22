<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="2.0">
    <xsl:template match="/">
        <table>
            <tr>
                <th>Title</th>
                <th>Author</th>
            </tr>
            <tr>
                <td>
          <xsl:value-of select="csv/row/Title"/>
        </td>
                <td>
          <xsl:value-of select="csv/row/Author"/>
        </td>
            </tr>
        </table>
    </xsl:template>
</xsl:stylesheet>