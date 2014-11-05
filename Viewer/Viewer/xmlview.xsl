<?xml version="1.0"?>
<x:stylesheet xmlns:x="http://www.w3.org/TR/WD-xsl" xmlns:dt="urn:schemas-microsoft-com:datatypes" xmlns:d2="uuid:C2F41010-65B3-11d1-A29F-00AA00C14882">
	<x:template match="/">
		<HTML><HEAD>
				<STYLE>
BODY{font:x-small 'Verdana';margin-right:1.5em}
.c{ }
.b{color:red;font-family:'Courier New';font-weight:bold;text-decoration:none}
.e{margin-left:1em;text-indent:-1em;margin-right:1em}
.k{margin-left:1em;text-indent:-1em;margin-right:1em}
.t{color:#990000}
.xt{color:#990099}
.ns{color:red}
.dt{color:green}
.m{color:blue}
.tx{font-weight:bold}
.db{text-indent:0px;margin-left:1em;margin-top:0px;margin-bottom:0px;padding-left:.3em;border-left:1px solid #CCCCCC;font:small Courier}
.di{font:small Courier}
.d{color:blue}
.pi{color:blue}
.cb{text-indent:0px;margin-left:1em;margin-top:0px;margin-bottom:0px;padding-left:.3em;font:small Courier;color:#888888}
.ci{font:small Courier;color:#888888}
PRE{margin:0px;display:inline}</STYLE></HEAD>
<BODY>
	<x:apply-templates/>
</BODY>
</HTML>
	</x:template>
	<x:template match="node()[nodeType()=10]">
		<DIV class="e"><SPAN>
				<SPAN class="d">&lt;!DOCTYPE <x:node-name/><I> (Source not shown...)</I>&gt;</SPAN>
			</SPAN></DIV>
	</x:template>
	<x:template match="pi()">
		<DIV class="e">
			<SPAN class="m">&lt;?</SPAN><SPAN class="pi"><x:node-name/>
				<x:value-of/></SPAN><SPAN class="m">?&gt;</SPAN>
		</DIV>
	</x:template>
	<x:template match="pi('xml')">
		<DIV class="e">
			<SPAN class="m">&lt;?</SPAN><SPAN class="pi">xml <x:for-each select="@*"><x:node-name/>="<x:value-of/>" </x:for-each></SPAN><SPAN class="m">?&gt;</SPAN>
		</DIV>
	</x:template>
	<x:template match="@*" xml:space="preserve"><SPAN><x:attribute name="class"><x:if match="x:*/@*">x</x:if>t</x:attribute> <x:node-name/></SPAN><SPAN class="m">="</SPAN><B><x:value-of/></B><SPAN class="m">"</SPAN></x:template>
	<x:template match="@xmlns:*|@xmlns|@xml:*"><SPAN class="ns">
			<x:node-name/></SPAN><SPAN class="m">="</SPAN><B class="ns"><x:value-of/></B><SPAN class="m">"</SPAN></x:template>
	<x:template match="@dt:*|@d2:*"><SPAN class="dt">
			<x:node-name/></SPAN><SPAN class="m">="</SPAN><B class="dt"><x:value-of/></B><SPAN class="m">"</SPAN></x:template>
	<x:template match="textnode()">
		<DIV class="e">
			<SPAN class="tx"><x:value-of/></SPAN>
		</DIV>
	</x:template>
	<x:template match="comment()">
		<DIV class="k">
			<SPAN class="m">&lt;!--</SPAN>
			<SPAN id="clean" class="ci"><PRE><x:value-of/></PRE></SPAN>
			<SPAN class="b"><x:entity-ref name="nbsp"/></SPAN>
			<SPAN class="m">--&gt;</SPAN>
		</DIV>
	</x:template>
	<x:template match="cdata()">
		<DIV class="k">
			<SPAN class="m">&lt;![CDATA[</SPAN>
			<SPAN id="clean" class="di"><PRE><x:value-of/></PRE></SPAN>
			<SPAN class="b"><x:entity-ref name="nbsp"/></SPAN>
			<SPAN class="m">]]&gt;</SPAN>
		</DIV>
	</x:template>
	<x:template match="*">
		<DIV class="e"><DIV STYLE="margin-left:1em;text-indent:-2em">
				<SPAN class="m">&lt;</SPAN><SPAN><x:attribute name="class"><x:if match="x:*">x</x:if>t</x:attribute><x:node-name/></SPAN>
				<x:apply-templates select="@*"/><SPAN class="m"> /&gt;</SPAN>
			</DIV></DIV>
	</x:template>
	<x:template match="*[node()]">
		<DIV class="e">
			<DIV>
				<SPAN class="m">&lt;</SPAN><SPAN><x:attribute name="class"><x:if match="x:*">x</x:if>t</x:attribute><x:node-name/></SPAN><x:apply-templates select="@*"/>
				<SPAN class="m">&gt;</SPAN></DIV>
			<DIV><x:apply-templates/>
				<DIV>
					<SPAN class="m">&lt;/</SPAN><SPAN><x:attribute name="class"><x:if match="x:*">x</x:if>t</x:attribute><x:node-name/></SPAN><SPAN class="m">&gt;</SPAN></DIV>
			</DIV></DIV>
	</x:template>
	<x:template match="*[textnode()$and$$not$(comment()$or$pi()$or$cdata())]">
		<DIV class="e"><DIV STYLE="margin-left:1em;text-indent:-2em">
				<SPAN class="m">&lt;</SPAN><SPAN><x:attribute name="class"><x:if match="x:*">x</x:if>t</x:attribute><x:node-name/></SPAN><x:apply-templates select="@*"/>
				<SPAN class="m">&gt;</SPAN><SPAN class="tx"><x:value-of/></SPAN><SPAN class="m">&lt;/</SPAN><SPAN><x:attribute name="class"><x:if match="x:*">x</x:if>t</x:attribute><x:node-name/></SPAN><SPAN class="m">&gt;</SPAN>
			</DIV></DIV>
	</x:template>
	<x:template match="*[*]">
		<DIV class="e">
			<DIV STYLE="margin-left:1em;text-indent:-2em">
				<SPAN class="m">&lt;</SPAN><SPAN><x:attribute name="class"><x:if match="x:*">x</x:if>t</x:attribute><x:node-name/></SPAN><x:apply-templates select="@*"/>
				<SPAN class="m">&gt;</SPAN></DIV>
			<DIV><x:apply-templates/>
				<DIV>
					<SPAN class="m">&lt;/</SPAN><SPAN><x:attribute name="class"><x:if match="x:*">x</x:if>t</x:attribute><x:node-name/></SPAN><SPAN class="m">&gt;</SPAN></DIV>
			</DIV></DIV>
	</x:template>
</x:stylesheet>
