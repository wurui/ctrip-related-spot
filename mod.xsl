<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:oxm="https://www.openxsl.com">
    <xsl:template match="/root" name="wurui.ctrip-related-spot">
    	<xsl:param name="title">看过本景点的人还看了</xsl:param>
        <!-- className 'J_OXMod' required  -->
        <div class="J_OXMod oxmod-ctrip-related-spot" ox-mod="ctrip-related-spot">
            <h3>
                <xsl:value-of select="$title"/>
            </h3>
            <ul>
            	<xsl:for-each select="data/recommended-spot/i">
	            	<li>
	            		<a href="{href}">
	            			<img class="mainpic"
	            			 style="background-image:url({img})"
	            			 src="https://a.oxm1.cc/img/blank.png"/>
		            		<h4 class="title"><xsl:value-of select="title"/></h4>
		            		<p class="bottom">
		            			<span class="score"><xsl:value-of select="score"/></span>
		            			<span class="price">
		            				<em><xsl:value-of select="price"/></em>
		            			</span>
		            		</p>
		            	</a>
	            	</li>
	            </xsl:for-each>
            </ul>
        </div>
    </xsl:template>
</xsl:stylesheet>
