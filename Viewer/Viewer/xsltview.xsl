<?xml version="1.0"?>
<xsl:stylesheet 
	xmlns:xsl="http://www.w3.org/1999/XSL/Transform" 
	xmlns:msxsl="urn:schemas-microsoft-com:xslt"
	xmlns:xsltview="#xsltview"
	version="1.0">
	
	<xsl:output method="html"/>
  <xsl:template match="/">
		<HTML>
			<HEAD>
				<STYLE>
BODY{font:x-small 'Verdana'}
.template{margin-left:1em;background-color: #f4f4f4;}
.indent{margin-left:1em;}
.xmlchar{color: blue}
.xslnode{color: #990000}
.literalchar{color: black}
.literalnode{color: black}
.literalquote{color: black}
.attribute{color: red}
.quote{color: black}
.namespace{color: red}
.comment{color: gray}
				</STYLE>
			</HEAD>
			<BODY>
				<xsl:apply-templates/>
			</BODY>
		</HTML>
  </xsl:template>

	<xsl:template match="text()">
		<xsl:choose>
			<xsl:when test="xsltview:cdata(.)">&lt;![CDATA[
			<xmp style="font-size:larger"><xsl:value-of select="." disable-output-escaping="yes"/></xmp>
			]]&gt;
			</xsl:when>
			<xsl:otherwise>
				<xsl:value-of select="."/>
			</xsl:otherwise>
		</xsl:choose>
	</xsl:template>

	<xsl:template match="*">
		<DIV class="indent">
			<SPAN class="literalchar">&lt;</SPAN>
			<SPAN class="literalnode"><xsl:value-of select="name()"/></SPAN>
			<xsl:apply-templates select="@*"/>
			<SPAN class="literalchar">/&gt;</SPAN>
		</DIV>
		<xsl:apply-templates />
	</xsl:template>

	<xsl:template match="*[* | text()]">
		<DIV class="indent">
			<SPAN class="literalchar">&lt;</SPAN>
			<SPAN class="literalnode"><xsl:value-of select="name()"/></SPAN>
			<xsl:apply-templates select="@*"/>
			<SPAN class="literalchar">&gt;</SPAN>
			<xsl:apply-templates />
			<SPAN class="literalchar">&lt;/</SPAN>
			<SPAN class="literalnode"><xsl:value-of select="name()"/></SPAN>
			<SPAN class="literalchar">&gt;</SPAN>
		</DIV>
	</xsl:template>
	
	<xsl:template match="comment()">
		<DIV class="indent">
			<SPAN class="xmlchar">&lt;!--</SPAN>
			<SPAN class="comment"><xsl:value-of select="."/></SPAN>
			<SPAN class="xmlchar">--&gt;</SPAN>
		</DIV>
	</xsl:template>
	
	<xsl:template match="@*">
		<xsl:text> </xsl:text>
		<SPAN class="literalnode"><xsl:value-of select="name()"/></SPAN>
		<SPAN class="literalchar">="</SPAN>
		<SPAN class="literalquote"><xsl:value-of select="."/></SPAN>
		<SPAN class="literalchar">"</SPAN>
	</xsl:template>

	<xsl:template match="xsl:*">
		<DIV>
			<xsl:attribute name="class">indent</xsl:attribute>
			<xsl:if test="self::xsl:template">
				<xsl:attribute name="class">template</xsl:attribute>
				<xsl:attribute name="style">margin-top:.5em;margin-bottom:.5em;</xsl:attribute>
			</xsl:if>
			<SPAN class="xmlchar">&lt;</SPAN>
			<B id="tip" class="xslnode"><xsl:value-of select="name()"/></B>
			<xsl:apply-templates select="@*"/>
			<SPAN class="xmlchar">/&gt;</SPAN>
		</DIV>
		<xsl:apply-templates />
	</xsl:template>

	<xsl:template match="xsl:*[* | text()]">
		<DIV>
			<xsl:attribute name="class">indent</xsl:attribute>
			<xsl:if test="self::xsl:template">
				<xsl:attribute name="class">template</xsl:attribute>
				<xsl:attribute name="style">margin-top:.5em;margin-bottom:.5em;</xsl:attribute>
			</xsl:if>
			<SPAN class="xmlchar">&lt;</SPAN>
			<B id="tiptemplate" class="xslnode"><xsl:value-of select="name()"/></B>
			<xsl:if test="self::xsl:stylesheet | self::xsl:transform">
				<xsl:for-each select="namespace::*">
					<xsl:if test="name() != 'xmlns:xml'">
						<xsl:text> </xsl:text>
						<SPAN class="namespace"><xsl:value-of select="name()"/></SPAN>
						<SPAN class="xmlchar">="</SPAN>
						<B class="namespace"><xsl:value-of select="."/></B>
						<SPAN class="xmlchar">"</SPAN>
					</xsl:if>
				</xsl:for-each>
			</xsl:if>
			<xsl:apply-templates select="@*"/>
			<SPAN class="xmlchar">&gt;</SPAN>
			<xsl:apply-templates />
			<SPAN class="xmlchar">&lt;/</SPAN>
			<B class="xslnode"><xsl:value-of select="name()"/></B>
			<SPAN class="xmlchar">&gt;</SPAN>
		</DIV>
	</xsl:template>
	
	<xsl:template match="@*[parent::xsl:*] | @xsl:*">
		<xsl:text> </xsl:text>
		<SPAN class="xslnode"><xsl:value-of select="name()"/></SPAN>
		<SPAN class="xmlchar">="</SPAN>
		<B class="quote"><xsl:value-of select="."/></B>
		<SPAN class="xmlchar">"</SPAN>
	</xsl:template>
	
	<msxsl:script implements-prefix="xsltview"><![CDATA[
	function cdata(pNodeList) {
		return pNodeList.item(0).nodeType == 4;
	}
	]]></msxsl:script>
</xsl:stylesheet>

