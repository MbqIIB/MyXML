<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
	<xsl:output method="html"/>
  <xsl:template match="/">
		<html>
			<body>
				<h3>element-available()</h3>
				<ul>
					<li>
						<b>element-available('xsl:value-of')</b> = 
						<xsl:value-of select="element-available('xsl:value-of')"/>
					</li>
					<li>
						<b>element-available('xsl:some-future-element')</b> = 
						<xsl:value-of select="element-available('xsl:some-future-element')"/>
					</li>
				</ul>
			</body>
		</html>
  </xsl:template>
</xsl:stylesheet>
