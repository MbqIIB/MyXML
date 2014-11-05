<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
	<xsl:output method="html"/>
  <xsl:template match="/">
		<html>
			<body>
				<h3>string() Function</h3>
				
				<ul>
					<li><b>string(0 div 0)</b> = 
						<xsl:value-of select="string(0 div 0)"/>
					</li>
					<li><b>string(1 div 0)</b> = 
						<xsl:value-of select="string(1 div 0)"/>
					</li>
					<li><b>string(2048 div 16)</b> = 
						<xsl:value-of select="string(2048 div 16)"/>
					</li>
					<li><b>string(1 = 1)</b> = 
						<xsl:value-of select="string(1 = 1)"/>
					</li>
					<li><b>string(//book/price)</b> = 
						<xsl:value-of select="string(//book/price)"/>
					</li>
					<li><b>string(//book)</b> = 
						<xsl:value-of select="string(//book)"/>
					</li>
				</ul>
			</body>
		</html>
  </xsl:template>
</xsl:stylesheet>
