<xsl:stylesheet 
xmlns:my="#mystuff"
xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0"
exclude-result-prefixes="my"> 
<xsl:output method="html"/> 

<my:data>
<my:message id="greeting">Hello, this is my message.</my:message>
</my:data>

<xsl:template match="/"> 
<html>
<body>
<xsl:value-of select="document('')//my:data/my:message[@id='greeting']"/>
</body>
</html>
</xsl:template> 
</xsl:stylesheet> 