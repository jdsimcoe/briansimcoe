<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0"
  xmlns:xsl="http://www.w3.org/1999/XSL/Transform">


<xsl:include href="../utilities/master.xsl"/>
<xsl:include href="../utilities/globals.xsl"/>


<xsl:template match="data">

<!--   <div class="container">
    <div class="marketing main">

      <h2>What is Determine?</h2>
      <p class="marketing-byline">Like Paul declared above, our goal is to make the Gospel of Jesus Christ known, treasured and embraced in every facet of life. We are striving to do this in the following ways:</p>

    </div>
  </div> -->

  <div class="main container">


    <div class="row">
      <div class="span12">
        <h3>Artwork</h3>
        <xsl:apply-templates select="/data/artwork-2-latest/entry"/>
      </div>
    </div>

    <div class="row">
      <div class="span12">
        <h3>Photography</h3>
<!--         <xsl:apply-templates select="/data/articles-4-latest/entry"/> -->
      </div>
    </div>

    <div class="row">
      <div class="span12">
        <xsl:apply-templates select="/data/writing-latest/entry"/>
      </div>
    </div>

  </div>

</xsl:template>


</xsl:stylesheet>