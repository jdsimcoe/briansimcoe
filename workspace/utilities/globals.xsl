<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0"
  xmlns:xsl="http://www.w3.org/1999/XSL/Transform">


<!-- WRITING
     ======== -->


<xsl:template match="/data/writing-latest/entry">
  <xsl:call-template name="writing-entry"/>
</xsl:template>


<xsl:template match="/data/writing-single/entry">
  <xsl:call-template name="writing-entry"/>
</xsl:template>


<xsl:template name="writing-entry">
  <div>
    <xsl:choose>
      <xsl:when test="$root-page = 'home'">
        <xsl:attribute name="class">
          <xsl:text>wrapper-blog home</xsl:text>
        </xsl:attribute>
      </xsl:when>
      <xsl:otherwise>
        <xsl:attribute name="class">
          <xsl:text>wrapper-blog</xsl:text>
        </xsl:attribute>
      </xsl:otherwise>
    </xsl:choose>
    <div class="span12 article entry list">

      <h5 class="center">From the Desk of Brian Simcoe</h5>
      <hr/>
      <div class="inner">
        <h4 class="right">
          <xsl:call-template name="format-date">
            <xsl:with-param name="date" select="date/date/start/@iso" />
            <xsl:with-param name="format" select="'%m+; '" />
          </xsl:call-template>
          <xsl:call-template name="format-date">
            <xsl:with-param name="date" select="date/date/start/@iso" />
            <xsl:with-param name="format" select="'%d;'" />
          </xsl:call-template>
          <sup>
            <xsl:call-template name="format-date">
              <xsl:with-param name="date" select="date/date/start/@iso" />
              <xsl:with-param name="format" select="'%ds;'" />
            </xsl:call-template>
          </sup>
          <xsl:call-template name="format-date">
            <xsl:with-param name="date" select="date/date/start/@iso" />
            <xsl:with-param name="format" select="', %y+;'" />
          </xsl:call-template>
        </h4>
        <h1>
          <a href="{$root}/writing/{title/@handle}">
            <xsl:value-of select="title" />
          </a>
        </h1>
        <div class="content">
          <xsl:for-each select="verses/item">
            <xsl:call-template name="verse-entry" />
          </xsl:for-each>
          <xsl:choose>
            <xsl:when test="$root-page = 'home'">
              <xsl:call-template name="truncate">
                <xsl:with-param name="node" select="content" />
                <xsl:with-param name="length" select="450" />
              </xsl:call-template>
              <p class="right">
                <a href="{$root}/writing/{title/@handle}">Read <strong>Full Article </strong> <strong>&#8594;</strong></a>
              </p>
            </xsl:when>
            <xsl:otherwise>
              <div class="content">
                <xsl:value-of select="content" disable-output-escaping="yes" />
              </div>
            </xsl:otherwise>
          </xsl:choose>
        </div>
      </div>
    </div>


  </div>
</xsl:template>


<!-- ARTWORK
     ======= -->


<xsl:template match="/data/artwork-3-latest/entry">
  <xsl:call-template name="artwork-entry"/>
</xsl:template>


<xsl:template name="artwork-entry">

  <div class="span4 artwork">
    <a href="{$root}/artwork/{title/@handle}" class="artwork-entry home">
      <div class="metadata">
        <h4>
          <xsl:value-of select="title" />
        </h4>
        <p>
          <xsl:value-of select="media"/>
          <xsl:text> on </xsl:text>
          <xsl:value-of select="medium"/>
          <br/>
          <span class="dimensions">
            <xsl:text>Dimensions:</xsl:text>
            <xsl:value-of select="dimensions"/>
          </span>
          <xsl:if test="price != ''">
            <span class="badge number">
              <xsl:text>$</xsl:text>
              <xsl:value-of select="price"/>
              <xsl:text>.</xsl:text>
              <sup>00</sup>
            </span>
          </xsl:if>
        </p>

      </div>
      <img class="img-artwork" src="/workspace/img/spacer.gif" alt="{image/item/image/caption}" style="width:100%; height:240px;">
        <xsl:attribute name="data-responsimage">
          <xsl:value-of select="image/item/image/filename" />
        </xsl:attribute>
      </img>


    </a>
  </div>

</xsl:template>


<xsl:template match="/data/artwork-featured/entry">
  <xsl:call-template name="artwork-featured-entry"/>
</xsl:template>


<xsl:template name="artwork-featured-entry">
  <div class="span12">
    <div class="artwork">
      <a href="{$root}/artwork/{title/@handle}" class="artwork-entry home featured">
        <div class="metadata">
          <h4>
            <xsl:value-of select="title" />
          </h4>
          <p>
            <xsl:value-of select="media"/>
            <xsl:text> on </xsl:text>
            <xsl:value-of select="medium"/>
            <br/>
            <span class="dimensions">
              <xsl:text>Dimensions:</xsl:text>
              <xsl:value-of select="dimensions"/>
            </span>
            <xsl:if test="price != ''">
              <span class="badge number">
                <xsl:text>$</xsl:text>
                <xsl:value-of select="price"/>
                <xsl:text>.</xsl:text>
                <sup>00</sup>
              </span>
            </xsl:if>
          </p>

        </div>
        <div class="featured">Featured</div>
        <img class="img-artwork" src="/workspace/img/spacer.gif" alt="{image/item/image/caption}" style="width:100%; height:600px;">
          <xsl:attribute name="data-responsimage">
            <xsl:value-of select="image/item/image/filename" />
          </xsl:attribute>
        </img>


      </a>
    </div>
  </div>

</xsl:template>



<!-- PHOTOGRAPHY
     =========== -->

<xsl:template match="/data/photo-4-latest/entry">
  <xsl:call-template name="photo-entry"/>
</xsl:template>


<xsl:template name="photo-entry">

  <div class="span3 photo">
    <a href="{$root}/photo/{title/@handle}" class="photo-entry home">
      <div class="metadata">
        <h4>
          <xsl:value-of select="title" />
        </h4>
        <p class="description">
          <xsl:value-of select="image/item/image/caption" />
        </p>
      </div>
      <img class="img-pola" src="/workspace/img/spacer.gif" alt="{image/item/image/caption}" style="width:100%; height:100%;">
        <xsl:attribute name="data-responsimage">
          <xsl:value-of select="image/item/image/filename" />
        </xsl:attribute>
      </img>


    </a>
  </div>

</xsl:template>


<!-- BOOKS
     ===== -->

<xsl:template match="/data/books-4-latest/entry">
  <xsl:call-template name="book-entry"/>
</xsl:template>


<xsl:template match="/data/books-all/entry[reading='No']">
  <xsl:call-template name="book-entry"/>
</xsl:template>


<xsl:template match="/data/books-reading/entry">
  <xsl:call-template name="book-entry"/>
</xsl:template>

<xsl:template match="/data/books-all/entry[@id = //data/doctrines-single/entry/books/item/@id]">
  <xsl:call-template name="book-entry"/>
</xsl:template>


<xsl:template name="book-entry">
  <xsl:choose>
    <xsl:when test="reading = 'Yes'">
      <div class="span3 book">
        <img class="img-polaroid" src="/workspace/img/spacer.gif" alt="{image/item/image/caption}" style="width:100%; height:400px;">
          <xsl:attribute name="data-responsimage">
            <xsl:value-of select="image/item/image/filename" />
          </xsl:attribute>
        </img>
      </div>
    </xsl:when>
    <xsl:otherwise>
      <div class="span3 book">
        <a href="{$root}/books/{title/@handle}" class="book-entry home">
          <div class="metadata">
            <h4>
              <xsl:value-of select="title" />
            </h4>
            <p>
              <xsl:text>by </xsl:text>
              <xsl:value-of select="author" />
              <xsl:if test="review != ''">
                <xsl:text>&#160;</xsl:text>
                <span class="badge">Review</span>
              </xsl:if>
            </p>
            <hr class="soften" />
            <div class="ratings">
              <xsl:call-template name="ratings">
                <xsl:with-param name="i" select="1" />
                <xsl:with-param name="count" select="10" />
                <xsl:with-param name="rating-num" select="rating" />
              </xsl:call-template>
            </div>
          </div>
          <img class="img-polaroid" src="/workspace/img/spacer.gif" alt="{image/item/image/caption}" style="width:100%; height:400px;">
            <xsl:attribute name="data-responsimage">
              <xsl:value-of select="image/item/image/filename" />
            </xsl:attribute>
          </img>


        </a>
      </div>
    </xsl:otherwise>
  </xsl:choose>
</xsl:template>


<!-- STUDIES
     ======= -->

<xsl:template match="/data/studies-all/entry">
  <xsl:call-template name="studies-entry"/>
</xsl:template>


<xsl:template match="/data/studies-all/entry[doctrine/item/@id = //data/doctrines-single/entry/@id]">
  <xsl:call-template name="studies-single-entry"/>
</xsl:template>


<xsl:template name="studies-entry">
  <tr>
    <td><xsl:value-of select="position()" /></td>
    <td>
      <a href="{$root}/{$root-page}/{title/@handle}">
        <xsl:value-of select="title" />
        <xsl:if test="upcoming = 'Yes'">
          <xsl:text>&#160;&#160;</xsl:text>
          <span class="badge badge-inverse">UPCOMING</span>
        </xsl:if>
      </a>
    </td>
    <td><xsl:value-of select="doctrine" /></td>
    <td>
      <xsl:call-template name="format-date">
        <xsl:with-param name="date" select="date/date/start/@iso" />
        <xsl:with-param name="format" select="'%m-; %d;, %y+;'" />
      </xsl:call-template>
    </td>
  </tr>
</xsl:template>


<xsl:template name="studies-single-entry">
  <div>
    <a href="{$root}/foundations/{title/@handle}">
      <span class="badge">
        <xsl:call-template name="format-date">
          <xsl:with-param name="date" select="date/date/start/@iso" />
          <xsl:with-param name="format" select="'%m-; %d;, %y+;'" />
        </xsl:call-template>
      </span>
      <h2>
        <span class="logo">b</span>
        <xsl:text>&#160;</xsl:text>
        <xsl:value-of select="title" />
        <xsl:text>&#8594;</xsl:text>
      </h2>
    </a>
  </div>
</xsl:template>


<!-- VERSES
     ====== -->


<xsl:template name="verse-entry">
  <div class="verse center">
    <blockquote>
      <xsl:value-of select="content" />
      <br />
      <cite>
        <xsl:value-of select="passage" />
        <xsl:text> (</xsl:text>
        <xsl:value-of select="version/item/abbreviation" />
        <xsl:text>)</xsl:text>
      </cite>
    </blockquote>
  </div>
</xsl:template>


</xsl:stylesheet>
