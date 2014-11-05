<?xml version="1.0" encoding="windows-1251"?>
<xsl:stylesheet version="1.0"
     xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
   <xsl:output method="html"/>

   <!-- Template rule for root element(s): -->
   <xsl:template match="/">
     <html>
       <body>
         <xsl:apply-templates select="//crpesign"/>
         <xsl:apply-templates select="//crpe"/>
       </body>
     </html>
   </xsl:template>

   <xsl:template match="crpesign">
     <h1>Список форм, разработанных с использованием "Seagate Crystal Reports".</h1>
   </xsl:template>

   <xsl:template match="crpe">
     <H2 align="left">
       <xsl:number level="multiple" count="crpe" from="root" format="1. i"
       />. <xsl:value-of select="@name"/>
     </H2>

     <DL>
       <DT><h3 style="padding-left: 1em;">Комментарий к отчету</h3></DT>
         <DD>
           <xsl:copy>
               <xsl:value-of disable-output-escaping="yes" select="body"/>
           </xsl:copy>
         </DD>
     </DL>
   </xsl:template>
</xsl:stylesheet>
