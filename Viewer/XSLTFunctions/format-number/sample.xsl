<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
	<xsl:output method="html"/>
  <xsl:template match="/">
		<html>
			<body>
				<table>
					<tr><td><b>Number</b></td><td><b>Title</b></td><td><b>Price</b></td></tr>
					<xsl:for-each select="//book">
						<tr>
							<td><xsl:value-of select="format-number(position(), '000')"/></td>
							<td><xsl:value-of select="title"/></td>
							<td align="right">$<xsl:value-of select="format-number(price, '#,##0.00')"/></td>
						</tr>
					</xsl:for-each>
				</table>
			</body>
		</html>
  </xsl:template>
</xsl:stylesheet>
