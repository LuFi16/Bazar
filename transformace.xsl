<?xml version="1.0" encoding="UTF-8"?>
  <!-- Odkaz na github: https://github.com/LuFi16/Bazar -->
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
    <xsl:output method="text"/>
    <xsl:template match="/">
        [ 
		<xsl:for-each select="Bazar/category/access_rights/person[rights = 'R']"> 
			<xsl:sort select="surname" order="descending"/>
			{
                        "ID": "<xsl:value-of select="@id"/>",
			"Jméno": "<xsl:value-of select="name"/>",
			"Príjmení": "<xsl:value-of select="surname"/>",			
			"Práva": "<xsl:value-of select="rights"/>"
			}<xsl:if test="position() != last()">,</xsl:if>
		</xsl:for-each>
		]
    </xsl:template>
</xsl:stylesheet>