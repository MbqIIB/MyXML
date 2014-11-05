<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
	<xsl:output method="html"/>
  <xsl:template match="/">
		<html>
			<body>
				<h3>contains() Function</h3>
				
				<ul>
					<li><b>contains('txtLastName', 'txt')</b> = 
						<xsl:value-of select="contains('txtLastName', 'txt')"/>
					</li>
					<li><b>contains('test', 'testing')</b> = 
						<xsl:value-of select="contains('test', 'testing')"/>
					</li>
					<li><b>contains('test', '')</b> = 
						<xsl:value-of select="contains('test', '')"/>
					</li>
					<li><b>contains('txtLastName', 'Name')</b> = 
						<xsl:value-of select="contains('txtLastName', 'Name')"/>
					</li>
					<li><b>contains('txtLastName', 'name')</b> = 
						<xsl:value-of select="contains('txtLastName', 'name')"/>
					</li>
					<li><b>//book[contains(author, 'Matt')]/author</b> = 
						<xsl:value-of select="//book[contains(author, 'Matt')]/author"/>
					</li>
				</ul>
			</body>
		</html>
  </xsl:template>
</xsl:stylesheet>
