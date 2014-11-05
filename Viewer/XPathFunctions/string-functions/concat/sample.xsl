<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
	<xsl:output method="html"/>
  <xsl:template match="/">
		<html>
			<body>
				<h3>concat() Function</h3>
				
				<ul>
					<li><b>concat(2000, 10, 25)</b> = 
						<xsl:value-of select="concat(2000, 10, 25)"/>
					</li>
					<li><b>concat('txt', generate-id())</b> = 
						<xsl:value-of select="concat('txt', generate-id())"/>
					</li>
				</ul>
			</body>
		</html>
  </xsl:template>
</xsl:stylesheet>
