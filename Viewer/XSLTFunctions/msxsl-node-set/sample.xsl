<xsl:stylesheet 
		xmlns:msxsl="urn:schemas-microsoft-com:xslt"
		xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
	<xsl:output method="html"/>
  <xsl:template match="/">
		<xsl:variable name="related-genre">
			<related genre="Fantasy">
				<genre>Fiction</genre>
				<genre>Literature</genre>
				<genre>Science-Fiction</genre>
			</related>
			<related genre="Computer">
				<genre>Business</genre>
				<genre>Non-Fiction</genre>
			</related>
			<related genre="Romance">
				<genre>Literature</genre>
				<genre>Fiction</genre>
			</related>
		</xsl:variable>
		<html>
			<body>
				<h3>msxsl:node-set()</h3> 
					<table>
						<tr><td><b>Title</b></td><td><b>Genre</b></td><td><b>Related Genres</b></td></tr>
						<xsl:for-each select="//book">
							<tr>
								<td>
									<xsl:value-of select="title"/>
								</td>
								<td>
									<xsl:value-of select="genre"/>
								</td>
								<td>
									<xsl:for-each select="msxsl:node-set($related-genre)/related[@genre=current()/genre]/genre">
										<xsl:value-of select="."/>
										<xsl:if test="position() != last()">
											<xsl:text>, </xsl:text>
										</xsl:if>
									</xsl:for-each>
								</td>
							</tr>
						</xsl:for-each>
					</table>
			</body>
		</html>
  </xsl:template>
</xsl:stylesheet>
