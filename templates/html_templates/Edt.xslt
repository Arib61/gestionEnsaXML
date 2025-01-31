<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0"
    xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns:fo="http://www.w3.org/1999/XSL/Format"
    xmlns:b="http://studentcard.org">

    <xsl:template match="/">
        <html>
            <head>
                <title>Student Cards</title>
                <style>
                    body {
                        font-family: Arial, sans-serif;
                        text-align: center;
                    }
                    .card {
                        border: 1px solid black;
                        padding: 10px;
                        margin: 10px;
                        display: inline-block;
                    }
                    img {
                        width: 80px;
                        height: auto;
                    }
                </style>
            </head>
            <body>
                <h1>Cartes d'étudiants</h1>
                <xsl:for-each select="b:cards/b:card">
                    <div class="card">
                        <h2><xsl:value-of select="b:firstName"/> <xsl:value-of select="b:lastName"/></h2>
                        <p>Code Apogée: <xsl:value-of select="b:codeApoge"/></p>
                        <img src="{b:photo/@uri}" alt="Photo"/>
                    </div>
                </xsl:for-each>
            </body>
        </html>
    </xsl:template>

</xsl:stylesheet>
