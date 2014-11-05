<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
	<xsl:output method="html"/>
  <xsl:template match="/">
		<html>
			<body>
				<h3>translate() Function</h3>
				
				<ul>
					<li><b>translate('abcd', 'abc', 'ABC')</b> = 
						<xsl:value-of select="translate('abcd', 'abc', 'ABC')"/>
					</li>
					<li><b>translate('abc', 'abcdefg', 'ABC')</b> = 
						<xsl:value-of select="translate('abc', 'abcdefg', 'ABC')"/>
					</li>
					<li><b>translate('cba', 'abcdefg', 'ABCDEFG')</b> = 
						<xsl:value-of select="translate('cba', 'abcdefg', 'ABCDEFG')"/>
					</li>
					<li><b>translate(' remove all spaces ', ' ', '')</b> = 
						<xsl:value-of select="translate(' remove all spaces ', ' ', '')"/>
					</li>
				</ul>
			</body>
		</html>
  </xsl:template>
</xsl:stylesheet>
