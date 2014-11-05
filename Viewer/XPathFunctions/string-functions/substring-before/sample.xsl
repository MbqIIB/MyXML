<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
	<xsl:output method="html"/>
  <xsl:template match="/">
		<html>
			<body>
				<h3>substring-before() Function</h3>
				
				<ul>
					<li><b>substring-before('2000-10-25', '-')</b> = 
						<xsl:value-of select="substring-before('2000-10-25', '-')"/>
					</li>
					<li><b>substring-before('2000-10-25', 'X')</b> = 
						<xsl:value-of select="substring-before('2000-10-25', 'X')"/>
					</li>
					<li><b>substring-before('2000-10-25', '')</b> = 
						<xsl:value-of select="substring-before('2000-10-25', '')"/>
					</li>
					<li><b>substring-before(//book/author, ',')</b> = 
						<xsl:value-of select="substring-before(//book/author, ',')"/>
					</li>
					<li><b>//book[substring-before(author, ',') = 'Ralls']/author</b> = 
						<xsl:value-of select="//book[substring-before(author, ',') = 'Ralls']/author"/>
					</li>
				</ul>
			</body>
		</html>
  </xsl:template>
</xsl:stylesheet>
