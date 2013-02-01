<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0"
  xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

<xsl:output method="xml"
  doctype-public="-//W3C//DTD XHTML 1.0 Strict//EN"
  doctype-system="http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd"
  omit-xml-declaration="yes"
  encoding="UTF-8"
  indent="yes" />

<xsl:include href="../utilities/master.xsl"/>


<xsl:template match="data">
	<div class="container">
    <div class="marketing">
      <i class="glyphicon-th-list icon-large"></i>
      <h2>Browse Our Catalog</h2>
      <p class="marketing-byline">We have a growing catalog of Gospel-centered materials. Below is an introduction to what we offer.</p>
    </div>
  </div>
  <div class="stripe first">
    <div class="container">
      <h3>Recent Bible Doctrines</h3>
      <br />
      <div class="row">
<!--         <xsl:apply-templates select="/data/doctrines-3-latest/entry"/> -->
        <div class="span4 doctrine">
          <a href="">
            <h3>Coming Soon...</h3>
            <div class="summary"> </div>
          </a>
        </div>
      </div>

    </div>
  </div>

  <div class="stripe second">
    <div class="container">
      <h3>From the Blog</h3>
      <div class="row">
<!--         <xsl:apply-templates select="/data/articles-4-latest/entry"/> -->
      </div>
    </div>
  </div>

  <div class="stripe third">
    <div class="container">
      <h3>Latest Quotes</h3>
      <div class="row">
<!--         <xsl:apply-templates select="/data/quotes-4-latest/entry"/> -->
      </div>
    </div>
  </div>
</xsl:template>




</xsl:stylesheet>