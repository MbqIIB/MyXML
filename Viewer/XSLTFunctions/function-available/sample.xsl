<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
	<xsl:output method="html"/>
  <xsl:template match="/">
		<html>
			<body>
				<h3>function-available()</h3>
				<ul>
					<li>
						<b>function-available('format-number')</b> = 
						<xsl:value-of select="function-available('format-number')"/>
					</li>
					<li>
						<b>function-available('some-future-function')</b> = 
						<xsl:value-of select="function-available('some-future-function')"/>
					</li>
				</ul>
			</body>
		</html>
  </xsl:template>
</xsl:stylesheet>
