<?xml version="1.0" encoding="UTF-8"?> 
<xsl:stylesheet version="1.0"
xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
<xsl:template match="/">
    <html>
        <head>
            <link rel="stylesheet" href="ejercicio5.css"/>
        </head>
        <body>
            <table>
                <tr>
                    <th>Nombre del ciclo</th>
                    <th>Grado</th>
                    <th>Año del titulo</th>
                </tr>
                <xsl:for-each select="centro/ciclos/ciclo">
                    <tr>
                        <td><xsl:value-of select="nombre"></xsl:value-of></td>
                        <td><xsl:value-of select="grado"></xsl:value-of></td>
                        <td><xsl:value-of select="decretoTitulo[@anio]"></xsl:value-of></td>
                    </tr>
                </xsl:for-each>
            </table>
        </body> 
    </html>
</xsl:template>
</xsl:stylesheet>