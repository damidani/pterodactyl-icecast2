<xsl:stylesheet xmlns:xsl = "http://www.w3.org/1999/XSL/Transform" version = "1.0">
<xsl:output omit-xml-declaration="no" method="xml" doctype-public="-//W3C//DTD XHTML 1.0 Strict//EN" doctype-system="http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd" indent="yes" encoding="UTF-8" />
<xsl:template match = "/icestats">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
	<title>Icecast Streaming Media Server</title>
	<link rel="stylesheet" type="text/css" href="style.css" />
	<meta name="viewport" content="width=device-width, initial-scale=1.0, user-scalable=yes" />
</head>
<body>
	<h1 id="header">Server Information</h1>
	<!--index header menu -->
	<div id="menu">
		<ul>
			<li><a href="admin/">Administration</a></li>
			<li><a href="status.xsl">Server Status</a></li>
			<li><a href="server_version.xsl">Version</a></li>
		</ul>
	</div>
	<!--end index header menu -->

	<div class="roundbox">
		<h3>Server Information</h3>
		<table class="yellowkeys">
			<tbody>
				<xsl:for-each select="/icestats">
				<tr>
					<td>Location</td>
					<td><xsl:value-of select="location" /></td>
				</tr>
				<tr>
					<td>Admin</td>
					<td><xsl:value-of select="admin" /></td>
				</tr>
				<tr>
					<td>Host</td>
					<td><xsl:value-of select="host" /></td>
				</tr>
				<tr>
					<td>Version</td>
					<td><xsl:value-of select="server_id" /></td>
				</tr>
				</xsl:for-each>
				<tr>
					<td>Download</td>
					<td><a href="https://icecast.org/download/">icecast.org</a></td>
				</tr>
				<tr>
					<td>Source code</td>
					<td><a href="https://icecast.org/download/#git">icecast.org/download/#git</a></td>
				</tr>
				<tr>
					<td>Documentation</td>
					<td><a href="https://icecast.org/docs/">icecast.org/docs</a></td>
				</tr>
				<tr>
					<td>Stream Directory</td>
					<td><a href="http://dir.xiph.org/index.php">dir.xiph.org</a></td>
				</tr>
				<tr>
					<td>Community</td>
					<td><a href="https://icecast.org/contact/">icecast.org/contact</a></td>
				</tr>
			</tbody>
		</table>
	</div>
	<div id="footer">
		Created by <a href="https://www.icecast.org/">icecast</a> hosted for free by <a href="https://delta-core.fr/">Delta Core</a>
	</div>
</body>
</html>
</xsl:template>
</xsl:stylesheet>
