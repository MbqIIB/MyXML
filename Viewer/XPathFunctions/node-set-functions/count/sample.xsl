<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
	<xsl:output method="html"/>
  <xsl:template match="/">
		<html>
			<body>
				<h3>count() Function</h3>
				
				<table>
					<tr>
						<td><b>Title</b></td>
						<td><b>Price</b></td>
					</tr>
					<xsl:for-each select="//book">
						<xsl:sort select="price" data-type="number"/>
						<tr>
							<td>
								<xsl:value-of select="title"/>
							</td>
							<td>
								<xsl:value-of select="price"/>
							</td>
						</tr>
					</xsl:for-each>
				</table>
				<b>Average Price: 
					<xsl:value-of select="format-number(sum(//book/price) div count(//book), '##0.00')"/>
				</b>
			</body>
		</html>
  </xsl:template>
</xsl:stylesheet>
