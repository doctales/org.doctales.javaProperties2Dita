<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns:xs="http://www.w3.org/2001/XMLSchema"
    xmlns:xd="http://www.oxygenxml.com/ns/doc/xsl"
    exclude-result-prefixes="xs xd"
    version="2.0">
    
    <xd:doc scope="stylesheet">
        <xd:desc>
            <xd:p><xd:b>Created on:</xd:b> May 24, 2016</xd:p>
            <xd:p><xd:b>Author:</xd:b> Stefan Eike</xd:p>
            <xd:p></xd:p>
        </xd:desc>
    </xd:doc>
    
   <xsl:output method="xml"
        doctype-public="-//OASIS//DTD DITA Topic//EN"
        doctype-system="topic.dtd"
        indent="yes"/>
    <xsl:strip-space elements="*"/>
    
    <xsl:template match="@*|node()">
        <xsl:copy>
            <xsl:apply-templates select="@*|node()" />
        </xsl:copy>
    </xsl:template>
    
    <xsl:template match="li/keyword">
        <xsl:if test="not(@id = following::keyword/@id)">
            <xsl:element name="keyword">
                <xsl:attribute name="id"><xsl:value-of select="@id"/></xsl:attribute>
                <xsl:apply-templates/>
            </xsl:element>
        </xsl:if>
    </xsl:template>
</xsl:stylesheet> 

