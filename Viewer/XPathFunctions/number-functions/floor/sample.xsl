<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
	<xsl:output method="html"/>
  <xsl:template match="/">
		<html>
			<body>
				<h3>floor() Function</h3>
				
				<ul>
					<li><b>floor(1.5)</b> = 
						<xsl:value-of select="floor(1.5)"/>
					</li>
					<li><b>floor(-1.5)</b> = 
						<xsl:value-of select="floor(-1.5)"/>
					</li>
					<li><b>floor(0)</b> = 
						<xsl:value-of select="floor(0)"/>
					</li>
					<li><b>floor(NaN)</b> = 
						<xsl:value-of select="floor(NaN)"/>
					</li>
					<li><b>floor(//book/price)</b> = 
						<xsl:value-of select="floor(//book/price)"/>
					</li>
				</ul>
			</body>
		</html>
  </xsl:template>
</xsl:stylesheet>
