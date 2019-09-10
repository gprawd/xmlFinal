<?xml version="1.0" encoding="UTF-8" ?>
<!--
   Final Project CIS 2330 Introduction to XML
   Author: Greg Prawdzik
   Date:   12/07/2018

   Filename:         ScoutAccounts.xsl
   Supporting Files: 

-->

<xsl:stylesheet version="1.0"
     xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

	 
	 
    <xsl:output method="html"
      doctype-system="about:legacy-compat"
      encoding="UTF-8"
      indent="yes" />



   <xsl:template match="/">

     <html>
			
			<head>
				<title>Scouts</title>
				
			</head>
			
			<body>
				
				<header>
				
					<h1>Pack 259</h1>
					<h2>Scout List</h2>
					
				</header>
				
				<section>
					<h2>Scouts</h2>
					<xsl:apply-templates select="Scouts/Scout">
						<xsl:sort select="ScoutID" />
					</xsl:apply-templates>
					
						
				</section>
				

			</body>
			
		</html>
		
	</xsl:template>
	
	<xsl:template match="Scout">
		
		<article>
			
			<h3>
				ID Number: <xsl:value-of select="ScoutID" />
			</h3>
				
			<h3>
				Name: <xsl:value-of select="Sname" />
			</h3>
			<h3>
				Address: <xsl:value-of select="Saddress" /><br />
				<xsl:value-of select="Scity" />, <xsl:value-of select="SSt" />  <xsl:value-of select="Szip" />
			</h3>	
						<h3>
				Parent: <xsl:value-of select="Pname" />
			</h3>
				
			<h3>
				Phone: <xsl:value-of select="Phone" />
			</h3>
			
			<h3>
				Email: <xsl:value-of select="Pemail" />
			</h3>
			
				<br /><br />
				
				
			
		</article>
		
	</xsl:template>
	
	
	
</xsl:stylesheet>