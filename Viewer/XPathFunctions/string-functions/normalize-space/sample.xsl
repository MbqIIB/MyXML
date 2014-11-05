<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
	<xsl:output method="html"/>
  <xsl:template match="/">
		<html>
			<body>
				<h3>normalize-space() Function</h3>
				
				<ul>
					<li><b>normalize-space(' this is    a test      ')</b> = 
						{<xsl:value-of select="normalize-space(' this is    a test      ')"/>}
					</li>
					<li><b>normalize-space('    ')</b> = 
						{<xsl:value-of select="normalize-space('    ')"/>}
					</li>
					<li><b>normalize-space(//book/description)</b> = 
						{<xsl:value-of select="normalize-space(//book/description)"/>}
					</li>
				</ul>
			</body>
		</html>
  </xsl:template>
</xsl:stylesheet>
