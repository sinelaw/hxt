<!-- Works only if we allow XPath to select xmlns:* attributes... -->
<xsl:transform version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

  <xsl:template match="*">
    <xsl:param name="nsattrs" select="@xsl:*"/>
    <xsl:copy>
      <xsl:copy-of select="@*|$nsattrs|@xsl:*"/>
      <xsl:apply-templates>
        <xsl:with-param name="nsattrs" select="$nsattrs|@xsl:*" />
      </xsl:apply-templates>
    </xsl:copy>
  </xsl:template>

</xsl:transform>