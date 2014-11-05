<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
	<xsl:output method="html"/>
  <xsl:template match="/">
		<html>
			<body>
				<h3>boolean() Function</h3>
				
				<ul>
					<li><b>boolean(0)</b> = 
						<xsl:value-of select="boolean(0)"/>
					</li>
					<li><b>boolean(1)</b> = 
						<xsl:value-of select="boolean(1)"/>
					</li>
					<li><b>boolean(-100)</b> = 
						<xsl:value-of select="boolean(-100)"/>
					</li>
					<li><b>boolean(100)</b> = 
						<xsl:value-of select="boolean(100)"/>
					</li>
					<li><b>boolean(NaN)</b> = 
						<xsl:value-of select="boolean(NaN)"/>
					</li>
					<li><b>boolean('hello')</b> = 
						<xsl:value-of select="boolean('hello')"/>
					</li>
					<li><b>boolean('')</b> = 
						<xsl:value-of select="boolean('')"/>
					</li>
					<li><b>boolean(//book)</b> = 
						<xsl:value-of select="boolean(//book)"/>
					</li>
					<li><b>boolean(//notfound)</b> = 
						<xsl:value-of select="boolean(//notfound)"/>
					</li>
				</ul>
			</body>
		</html>
  </xsl:template>
</xsl:stylesheet>
