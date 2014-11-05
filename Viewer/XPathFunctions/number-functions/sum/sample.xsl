<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
	<xsl:output method="html"/>
  <xsl:template match="/">
		<html>
			<body>
				<h3>sum() Function</h3>
				
				<ul>
					<li><b>sum(//book/price)</b> = 
						<xsl:value-of select="sum(//book/price)"/>
					</li>
					<li><b>sum(//notfound)</b> = 
						<xsl:value-of select="sum(//notfound)"/>
					</li>
				</ul>
			</body>
		</html>
  </xsl:template>
</xsl:stylesheet>
