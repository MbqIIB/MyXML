<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
	<xsl:output method="html"/>
  <xsl:template match="/">
		<html>
			<body>
				<h3>not() Function</h3>
				
				<ul>
					<li><b>not(true())</b> = 
						<xsl:value-of select="not(true())"/>
					</li>
					<li><b>not(false())</b> = 
						<xsl:value-of select="not(false())"/>
					</li>
					<li><b>not(0)</b> = 
						<xsl:value-of select="not(0)"/>
					</li>
					<li><b>not(1)</b> = 
						<xsl:value-of select="not(1)"/>
					</li>
					<li><b>not(//book)</b> = 
						<xsl:value-of select="not(//book)"/>
					</li>
					<li><b>//book[not(title = 'Midnight Rain')]/title</b> = 
						<xsl:value-of select="//book[not(title = 'Midnight Rain')]/title"/>
					</li>
					<li><b>//book[not(publisher)][2]/title</b> = 
						<xsl:value-of select="//book[not(publisher)][2]/title"/>
					</li>
				</ul>
			</body>
		</html>
  </xsl:template>
</xsl:stylesheet>
