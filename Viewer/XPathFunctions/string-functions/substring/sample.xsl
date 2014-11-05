<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
	<xsl:output method="html"/>
  <xsl:template match="/">
		<html>
			<body>
				<h3>substring() Function</h3>
				
				<ul>
					<li><b>substring('2000-10-25', 1, 4)</b> = 
						<xsl:value-of select="substring('2000-10-25', 1, 4)"/>
					</li>
					<li><b>substring('2000-10-25', 9)</b> = 
						<xsl:value-of select="substring('2000-10-25', 9)"/>
					</li>
					<li><b>substring('2000-10-25', 9, 100)</b> = 
						<xsl:value-of select="substring('2000-10-25', 9, 100)"/>
					</li>
					<li><b>substring('2000-10-25', 100)</b> = 
						<xsl:value-of select="substring('2000-10-25', 100)"/>
					</li>
					<li><b>substring('2000-10-25', 100, 100)</b> = 
						<xsl:value-of select="substring('2000-10-25', 100, 100)"/>
					</li>
					<li><b>//book[substring(publish_date, 6, 2) = '10']/title</b> = 
						<xsl:value-of select="//book[substring(publish_date, 6, 2) = '10']/title"/>
					</li>
				</ul>
			</body>
		</html>
  </xsl:template>
</xsl:stylesheet>
