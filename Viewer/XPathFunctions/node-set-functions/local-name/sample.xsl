<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
	<xsl:output method="html"/>
  <xsl:template match="/">
		<html>
			<body>
				<h3>local-name() Function</h3>
				
				<xsl:apply-templates />
							
			</body>
		</html>
  </xsl:template>
  
  <xsl:template match="*">
		<xsl:value-of select="local-name()"/> = <xsl:value-of select="text()"/><br/>
		<xsl:apply-templates select="*"/>
  </xsl:template>
</xsl:stylesheet>
