<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
	<xsl:output method="html"/>
  <xsl:template match="/">
		<html>
			<body>
				<h3>starts-with() Function</h3>
				
				<ul>
					<li><b>starts-with('txtLastName', 'txt')</b> = 
						<xsl:value-of select="starts-with('txtLastName', 'txt')"/>
					</li>
					<li><b>starts-with('test', 'testing')</b> = 
						<xsl:value-of select="starts-with('test', 'testing')"/>
					</li>
					<li><b>starts-with('test', '')</b> = 
						<xsl:value-of select="starts-with('test', '')"/>
					</li>
				</ul>
			</body>
		</html>
  </xsl:template>
</xsl:stylesheet>
