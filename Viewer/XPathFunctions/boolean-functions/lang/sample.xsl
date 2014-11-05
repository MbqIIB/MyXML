<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
	<xsl:output method="html"/>
  <xsl:template match="/">
		<html>
			<body>
				<h3>lang() Function</h3>
				
				<ul>
					<li><b>lang('')</b> = 
						<xsl:value-of select="lang('')"/>
					</li>
					<li><b>//*[lang('en')]</b> = 
						<xsl:value-of select="//*[lang('en')]"/>
					</li>
					<li><b>//*[lang('de')]</b> = 
						<xsl:value-of select="//*[lang('de')]"/>
					</li>
				</ul>
			</body>
		</html>
  </xsl:template>
</xsl:stylesheet>
