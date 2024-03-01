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
        <h1>Hola</h1>
        <xsl:for-each select="f1/piloto">
        <xsl:sort select="posicion" data-type="number"></xsl:sort>
        <h2><xsl:value-of select="nombre"/></h2>
        <h2><xsl:value-of select="escuderia"/></h2>
        <h2><xsl:value-of select="carreras/austria"/></h2>
        <h2><xsl:value-of select="carreras/españa"/></h2>
        <h2><xsl:value-of select="carreras/italia"/></h2>
        <h2><xsl:value-of select="@number"/></h2>
        </xsl:for-each>
    </body>
    </html>
</xsl:template>
</xsl:stylesheet>
