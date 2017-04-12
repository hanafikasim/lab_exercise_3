<?xml version="1.0" encoding="UTF-8" ?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
	<xsl:template match="/">
		<html>
			<body>
				<xsl:for-each select="list/product">
				
				<div class="box" >
				<a href="product_list.html">
				<table border="0">
					<tr>
						<td colspan="2">
							<img width="200px">
								<xsl:attribute name="src">
								<xsl:value-of select="image"/>
								</xsl:attribute>
							</img>							
						</td>
					</tr>
					<tr>
						<td colspan="2" class="title"><xsl:value-of select="title"/></td>
					</tr>
					<tr>
						<td colspan="2" class="description"><xsl:value-of select="description"/></td>
					</tr>
					<tr>
						<td rowspan="2" class="discount"><b><xsl:value-of select="discount"/></b></td>
						<td class="newPrice">RM<xsl:value-of select="format-number(new_price, '.00')"/></td>
					</tr>
					<tr>
						<td class="oriPrice">RM<xsl:value-of select="format-number(ori_price, '.00')"/></td>
					</tr>
				</table>
				</a>
				</div>

				</xsl:for-each>
				
			</body>
		</html>
	</xsl:template>
</xsl:stylesheet>