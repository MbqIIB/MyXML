<?xml version="1.0"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" 
                version="1.0">
  <xsl:import href="BBBReports.xsl"/>
  <xsl:import href="crpedocs.xsl"/>

   <!-- Template rule for root element(s): -->
   <xsl:template match="/">
     <html>
       <body>
         <xsl:apply-templates select="//groupRef"/>
       </body>
     </html>
   </xsl:template>

   <xsl:template match="groupRef">
       <xsl:apply-templates select="document(@href)/*"/>
   </xsl:template>
</xsl:stylesheet>
