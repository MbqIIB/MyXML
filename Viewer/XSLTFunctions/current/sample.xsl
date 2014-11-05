<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
	<xsl:output method="html"/>
  <xsl:template match="/">
		<html>
			<body>
				<table border="1">
					<tr>
						<td valign="top"><b>select="current()/author"</b><br/>
							<i>Uses current(), here the same as context node (.)</i>
						</td>
						<td valign="top"><b>select="./title"</b><br/>
							<i>Uses context node (.), here the same as current()</i>
						</td>
						<td valign="top"><b>select="//book[author=./author]/title"</b><br/>
							<i>select the book who's author equals it's own author (every book)</i>
						</td>
						<td valign="top"><b>select="//book[author=current()/author]/title"</b><br/>
							<i>select the book who's author equals the current node's author (what we probably want)</i>
						</td>
					</tr>
					<xsl:for-each select="//book">
						<tr>
							<td valign="top">
								<xsl:value-of select="current()/author"/>
							</td>
							<td valign="top">
								<xsl:value-of select="./title"/>
							</td>
							<td valign="top">
								<xsl:for-each select="//book[author=./author]/title">
									<xsl:value-of select="."/><br/>
								</xsl:for-each>
							</td>
							<td valign="top">
								<xsl:for-each select="//book[author=current()/author]/title">
									<xsl:value-of select="."/><br/>
								</xsl:for-each>
							</td>
						</tr>
					</xsl:for-each>
				</table>
			</body>
		</html>
  </xsl:template>
</xsl:stylesheet>
