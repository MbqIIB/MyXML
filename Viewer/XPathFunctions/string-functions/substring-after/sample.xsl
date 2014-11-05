<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
	<xsl:output method="html"/>
  <xsl:template match="/">
		<html>
			<body>
				<h3>substring-after() Function</h3>
				
				<ul>
					<li><b>substring-after('2000-10-25', '-')</b> = 
						<xsl:value-of select="substring-after('2000-10-25', '-')"/>
					</li>
					<li><b>substring-after('2000-10-25', 'X')</b> = 
						<xsl:value-of select="substring-after('2000-10-25', 'X')"/>
					</li>
					<li><b>substring-after('2000-10-25', '')</b> = 
						<xsl:value-of select="substring-after('2000-10-25', '')"/>
					</li>
					<li><b>substring-after(//book/author, ', ')</b> = 
						<xsl:value-of select="substring-after(//book/author, ', ')"/>
					</li>
					<li><b>//book[substring-after(author, ', ') = 'Kim']/author</b> = 
						<xsl:value-of select="//book[substring-after(author, ', ') = 'Kim']/author"/>
					</li>
				</ul>
			</body>
		</html>
  </xsl:template>
</xsl:stylesheet>
