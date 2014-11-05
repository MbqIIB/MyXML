<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
	<xsl:output method="html"/>
  <xsl:template match="/">
		<html>
			<body>
				<h3>number() Function</h3>
				
				<ul>
					<li><b>number('2048')</b> = 
						<xsl:value-of select="number('2048')"/>
					</li>
					<li><b>number('-2048')</b> = 
						<xsl:value-of select="number('-2048')"/>
					</li>
					<li><b>number('text')</b> = 
						<xsl:value-of select="number('text')"/>
					</li>
					<li><b>number('109.54')</b> = 
						<xsl:value-of select="number('109.54')"/>
					</li>
				</ul>
			</body>
		</html>
  </xsl:template>
</xsl:stylesheet>
