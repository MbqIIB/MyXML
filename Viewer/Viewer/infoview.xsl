<?xml version="1.0"?>
<xsl:stylesheet 
	xmlns:xsl="http://www.w3.org/1999/XSL/Transform" 
	version="1.0">
	
	<xsl:output method="html"/>
  <xsl:template match="info">
		<h2><xsl:value-of select="../@name"/></h2>
		<xsl:apply-templates select="syntax"/>
		<xsl:apply-templates select="description"/>
		<xsl:apply-templates select="remarks"/>
  </xsl:template>
  
  <xsl:template match="info[parent::group]">
		<h2><xsl:value-of select="parent::group/@name"/></h2>
		<blockquote><xsl:value-of select="remarks"/></blockquote>
	</xsl:template>
	
  <xsl:template match="syntax">
		<blockquote><xsl:copy-of select="."/></blockquote>
  </xsl:template>

  <xsl:template match="description">
		<blockquote><xsl:copy-of select="."/></blockquote>
  </xsl:template>
 
  <xsl:template match="remarks[*]">
		<h3>Remarks</h3>
		<blockquote><xsl:copy-of select="."/></blockquote>
  </xsl:template>
</xsl:stylesheet>

