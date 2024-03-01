<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:template match="/">
        <html lang="en">
            <head>
                <meta charset="UTF-8"/>
                <meta name="viewport" content="width=device-width, initial-scale=1.0"/>
                <title>Document</title>
            </head>
            <body>
             <xsl:for-each select="f1\piloto">
                <xsl:sort select=""></xsl:sort>
             <xsl:value-of select=""></xsl:value-of>
             </xsl:for-each>
            </body>
        </html>
    </xsl:template>
        
</xsl:stylesheet>