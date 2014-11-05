<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
	<xsl:output method="html"/>
  <xsl:template match="/">
		<html>
			<body>
				<h3>string-length() Function</h3>
				
				<ul>
					<li><b>string-length('2000-10-25')</b> = 
						<xsl:value-of select="string-length('2000-10-25')"/>
					</li>
					<li><b>string-length('')</b> = 
						<xsl:value-of select="string-length('')"/>
					</li>
					<li><b>//book[string-length(title) &gt; 20]/title</b> = 
						<xsl:value-of select="//book[string-length(title) &gt; 20]/title"/>
					</li>
				</ul>
			</body>
		</html>
  </xsl:template>
</xsl:stylesheet>
