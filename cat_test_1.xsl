<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
	<xsl:template match="/">
		<!-- TODO: Auto-generated template -->
		<html>
			<head></head>
			<body>
				<h1 style="text-align:center;">Employee Management System</h1>
				<table style="border-collapse:collapse; margin:0 auto;">
					<tr>
						<th style="border:1px solid black; padding:10px;">ID</th>
						<th style="border:1px solid black; padding:10px;">AGE</th>
						<th style="border:1px solid black; padding:10px;">SALARY</th>
						<th style="border:1px solid black; padding:10px;">EMAIL</th>
						<th style="border:1px solid black; padding:10px;">MOBNUM</th>
						<th style="border:1px solid black; padding:10px;">DESIGNATION</th>
						<th style="border:1px solid black; padding:10px;">PROMOTION</th>
					</tr>
					<xsl:for-each select="Company/Employee">
						<tr>
							<td style="border:1px solid #000; padding:10px;">
								<xsl:value-of select="Emp-id"></xsl:value-of>
							</td>
							<td style="border:1px solid #000; padding:10px;">
								<xsl:value-of select="Emp-age"></xsl:value-of>
							</td>
							<td style="border:1px solid #000; padding:10px;">
								<xsl:value-of select="Emp-salary"></xsl:value-of>
							</td>
							<td style="border:1px solid #000; padding:10px;">
								<xsl:value-of select="Emp-emailid"></xsl:value-of>
							</td>
							<td style="border:1px solid #000; padding:10px;">
								<xsl:value-of select="Emp-Phonenum"></xsl:value-of>
							</td>
							<td style="border:1px solid #000; padding:10px;">
								<xsl:value-of select="Emp-designation"></xsl:value-of>
							</td>
							<xsl:choose>
								<xsl:when test="Emp-age &gt;= 50">
									<td style="border:1px solid #000; padding:10px;">Associate Project Manager</td>
								</xsl:when>
								<xsl:when test="Emp-age &gt;= 40 and Emp-age &lt;= 49">
									<td style="border:1px solid #000; padding:10px;">Team Leader</td>
								</xsl:when>
								<xsl:when test="Emp-age &lt; 40">
									<td style="border:1px solid #000; padding:10px;">Developer</td>
								</xsl:when>
								<xsl:otherwise>
									<td style="border:1px solid #000; padding:10px;"></td>
								</xsl:otherwise>
							</xsl:choose>
							
						</tr>
					</xsl:for-each>
				</table>
			</body>
		</html>
	</xsl:template>
</xsl:stylesheet>