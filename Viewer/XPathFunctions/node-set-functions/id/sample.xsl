<xsl:stylesheet 
			xmlns:b="x-schema:book-schema.xml"
			xmlns:xsl="http://www.w3.org/1999/XSL/Transform" 
			version="1.0">
			
	<xsl:output method="html"/>
	
  <xsl:template match="/">
		<html>
			<body>
				<h3>id() Function</h3>
				
				<xsl:value-of select="id('bk102')/b:title"/>
			</body>
		</html>
  </xsl:template>
</xsl:stylesheet>
