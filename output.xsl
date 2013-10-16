<?xml version="1.0" ?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
<xsl:output method="text"/>

<xsl:template name="replace-substring">
      <xsl:param name="value" />
      <xsl:param name="from" />
      <xsl:param name="to" />
      <xsl:choose>
         <xsl:when test="contains($value,$from)">
            <xsl:value-of select="substring-before($value,$from)" />
            <xsl:value-of select="$to" />
            <xsl:call-template name="replace-substring">
               <xsl:with-param name="value" select="substring-after($value,$from)" />
               <xsl:with-param name="from" select="$from" />
               <xsl:with-param name="to" select="$to" />
            </xsl:call-template>
         </xsl:when>
         <xsl:otherwise>
            <xsl:value-of select="$value" />
         </xsl:otherwise>
      </xsl:choose>
</xsl:template>

<xsl:template match="/sql">

<xsl:for-each select="table">
	<xsl:text>php artisan generate:migration create_</xsl:text>
	<xsl:value-of select="@name" />
	<xsl:text>_table </xsl:text>
	<xsl:text> --fields="</xsl:text>
	<xsl:for-each select="row">
		<xsl:value-of select="@name" />
		<xsl:text>:</xsl:text>
		<xsl:value-of select="datatype" />
		<xsl:if test="not (position()=last())">
				<xsl:text>, </xsl:text>
		</xsl:if> 
	</xsl:for-each>
	<xsl:text>"</xsl:text>
	<xsl:text>
</xsl:text>



</xsl:for-each>


</xsl:template>
</xsl:stylesheet>
