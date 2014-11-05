<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
	<xsl:output method="html"/>
  <xsl:template match="/">
		<html>
			<body>
				<h3>ceiling() Function</h3>
				
				<ul>
					<li><b>ceiling(1.5)</b> = 
						<xsl:value-of select="ceiling(1.5)"/>
					</li>
					<li><b>ceiling(-1.5)</b> = 
						<xsl:value-of select="ceiling(-1.5)"/>
					</li>
					<li><b>ceiling(0)</b> = 
						<xsl:value-of select="ceiling(0)"/>
					</li>
					<li><b>ceiling(NaN)</b> = 
						<xsl:value-of select="ceiling(NaN)"/>
					</li>
					<li><b>ceiling(//book/price)</b> = 
						<xsl:value-of select="ceiling(//book/price)"/>
					</li>
				</ul>
			</body>
		</html>
  </xsl:template>
</xsl:stylesheet>
