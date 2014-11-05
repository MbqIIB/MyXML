<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
	<xsl:output method="html"/>
  <xsl:template match="/">
		<html>
			<body>
				<h3>round() Function</h3>
				
				<ul>
					<li><b>round(1.5)</b> = 
						<xsl:value-of select="round(1.5)"/>
					</li>
					<li><b>round(-1.5)</b> = 
						<xsl:value-of select="round(-1.5)"/>
					</li>
					<li><b>round(0)</b> = 
						<xsl:value-of select="round(0)"/>
					</li>
					<li><b>round(NaN)</b> = 
						<xsl:value-of select="round(NaN)"/>
					</li>
					<li><b>round(1.324945938 * 1000) div 1000</b> = 
						<xsl:value-of select="round(1.324945938 * 1000) div 1000"/>
					</li>
					<li><b>round(//book/price * 100) div 100</b> = 
						<xsl:value-of select="round(//book/price * 100) div 100"/>
					</li>
				</ul>
			</body>
		</html>
  </xsl:template>
</xsl:stylesheet>
