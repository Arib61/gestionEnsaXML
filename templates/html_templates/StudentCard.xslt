<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0"
    xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns:b="http://studentcard.org"
    exclude-result-prefixes="b">

    <xsl:output method="html" indent="yes" encoding="UTF-8"/>

    <!-- Définition de la base URL pour les images -->
    <xsl:variable name="base-url">http://127.0.0.1:5000/static/images/</xsl:variable>

    <xsl:template match="/">
        <html>
            <head>
                <title>Cartes d'Étudiants</title>
                <style>
                    body {
                        font-family: Arial, sans-serif;
                        background-color: #f4f4f4;
                        text-align: center;
                        padding: 20px;
                    }
                    .container {
                        display: flex;
                        flex-wrap: wrap;
                        justify-content: center;
                        gap: 20px;
                    }
                    .card {
                        width: 350px;
                        height: 180px;
                        border: 2px solid black;
                        background: white;
                        padding: 10px;
                        display: flex;
                        flex-direction: column;
                        justify-content: space-between;
                        box-shadow: 5px 5px 10px rgba(0, 0, 0, 0.3);
                    }
                    .header, .footer {
                        text-align: center;
                        font-size: 12px;
                        font-weight: bold;
                        color: #191970;
                    }
                    .title {
                        text-align: center;
                        font-size: 14px;
                        font-weight: bold;
                        color: #ff7f00;
                        border-bottom: 2px solid #191970;
                        margin-bottom: 5px;
                    }
                    .content {
                        display: flex;
                        justify-content: space-between;
                        align-items: center;
                    }
                    .left, .right {
                        flex: 1;
                        text-align: center;
                    }
                    .left img, .right img {
                        max-width: 60px;
                        max-height: 60px;
                    }
                    .student-info {
                        flex: 2;
                        text-align: left;
                        font-size: 14px;
                        font-weight: bold;
                        padding-left: 10px;
                    }
                </style>
            </head>
            <body>
                <h1>Cartes d'Étudiants</h1>
                <div class="container">
                    <xsl:for-each select="b:card">
                        <div class="card">
                            <!-- Header -->
                            <div class="header">
                                <p><xsl:value-of select="b:nameUae"/></p>
                                <p><xsl:value-of select="b:nameSchool"/></p>
                                <p><xsl:value-of select="b:villeSchool"/></p>
                            </div>
                            
                            <div class="title">
                                <xsl:value-of select="b:title"/>
                            </div>

                            <!-- Main Content -->
                            <div class="content">
                                <!-- Left Section (Photo) -->
                                <div class="left">
                                    <img src="{$base-url}photoEtudiante.jpg" alt="Photo Étudiant"/>
                                </div>

                                <!-- Student Information -->
                                <div class="student-info">
                                    <p><xsl:value-of select="b:lastName"/> <xsl:value-of select="b:firstName"/></p>
                                    <p>Code Apogée: <xsl:value-of select="b:codeApoge"/></p>
                                </div>

                                <!-- Right Section (QR Code + ENSA Logo) -->
                                <div class="right">
                                    <img src="{$base-url}logo_ensa.png" alt="Logo ENSA"/>
                                </div>
                            </div>

                            <!-- Footer -->
                            <div class="footer">
                                <p><xsl:value-of select="b:footer"/></p>
                            </div>
                        </div>
                    </xsl:for-each>
                </div>
            </body>
        </html>
    </xsl:template>

</xsl:stylesheet>
