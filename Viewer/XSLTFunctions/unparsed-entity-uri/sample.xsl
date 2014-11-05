<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
	<xsl:output method="html"/>

  <xsl:template match="/">
		<html>
			<body>
				<h3>unparsed-entity-uri()</h3>
				<ul>
					<li>
						<b>unparsed-entity-uri('pic')</b> = 
						<xsl:value-of select="unparsed-entity-uri('pic')"/>
					</li>
				</ul>
			</body>
		</html>
  </xsl:template>

</xsl:stylesheet>