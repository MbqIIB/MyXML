<?xml version="1.0" encoding="windows-1251"?>
<xsl:stylesheet version="1.0"
     xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
   <xsl:output method="html"/>

   <!-- Template rule for root element(s): -->
   <xsl:template match="/">
     <html>
       <body>
         <xsl:apply-templates select="//signature"/>
         <xsl:apply-templates select="//report"/>
       </body>
     </html>
   </xsl:template>

   <!-- Template rule for signature element(s): -->
   <xsl:template match="signature">
     <h1>Список отчетов разработанных в БрокБизнесБанке</h1>
   </xsl:template>

   <!-- Template rule for report element(s): -->
   <xsl:template match="report">
     <H2 align="left">
       <xsl:number level="multiple" count="report" from="root" format="1. i"
       />. <xsl:value-of select="@comment"/>
     </H2>
     <UL>
       <LI><B>Язык - </B><xsl:value-of select="@language"/></LI>
       <LI><B>Код отчета - </B>
         <xsl:value-of select="@name"/>
       </LI>
       <xsl:if test="count(classes/class) > 0">
         <LI><B>Классы:</B></LI>
         <xsl:for-each select="classes/class">
         <UL>
           <LI><xsl:value-of select="@name"/></LI>
         </UL>
         </xsl:for-each>
       </xsl:if>

       <xsl:if test="count(groups/group) > 0">
         <LI><B>Группы отчетов:</B></LI>
         <xsl:for-each select="groups/group">
         <UL>
           <LI><xsl:value-of select="@name"/></LI>
         </UL>
         </xsl:for-each>
       </xsl:if>
     </UL>
     <DL>
       <DT><h3 style="padding-left: 1em;">Комментарий к отчету</h3></DT>
         <DD>
           <xsl:copy>
               <xsl:text disable-output-escaping="yes">&lt;!--</xsl:text>
               <xsl:value-of disable-output-escaping="yes" select="body"/>
               <xsl:text disable-output-escaping="yes">--&gt;</xsl:text>
           </xsl:copy>
         </DD>
     </DL>
       <blockquote/>

   </xsl:template>

</xsl:stylesheet>
