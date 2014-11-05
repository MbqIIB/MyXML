<xsl:stylesheet 
		xmlns:msxsl="urn:schemas-microsoft-com:xslt"
		xmlns:xsl="http://www.w3.org/1999/XSL/Transform" 
		version="1.0">
		
	<xsl:output method="html"/>
  <xsl:template match="/">
		<html>
			<body>
				<h3>system-property() Function</h3>
				<ul>
					<li>
						<b>system-property("xsl:version")</b> = 
						<xsl:value-of select="system-property('xsl:version')"/>
					</li>
					<li>
						<b>system-property("xsl:vendor")</b> = 
						<xsl:value-of select="system-property('xsl:vendor')"/>
					</li>
					<li>
						<b>system-property("xsl:vendor-url")</b> = 
						<xsl:value-of select="system-property('xsl:vendor-url')"/>
					</li>
					<li>
						<b>system-property("msxsl:version")</b> = 
						<xsl:value-of select="system-property('msxsl:version')"/>
					</li>
				</ul>
			</body>
		</html>
  </xsl:template>
</xsl:stylesheet>
