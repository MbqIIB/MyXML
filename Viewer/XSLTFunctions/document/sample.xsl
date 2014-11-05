<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0"> 
<xsl:output method="html"/> 
<xsl:template match="/"> 
<html>
<body>
<table border="1">
<tr><td><b>Title</b></td><td><b>Author</b></td></tr>
<xsl:for-each select="//book">
<xsl:variable name="auid" select="author/@id"/>
<tr>
<td><xsl:value-of select="title"/></td>
<td>
<xsl:for-each select="document('data-author.xml')/authors/author[@id=$auid]">
<xsl:value-of select="first-name"/><xsl:text> </xsl:text><xsl:value-of select="last-name"/>
</xsl:for-each>
</td>
</tr>
</xsl:for-each>
</table>
</body>
</html>
</xsl:template> 
</xsl:stylesheet> 