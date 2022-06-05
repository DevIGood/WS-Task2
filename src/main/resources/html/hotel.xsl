<?xml version="1.0" encoding="UTF-8"?>


<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:output method="html" />

    <xsl:template match="/">
        <html>
            <head>
                <link href="https://fonts.googleapis.com/css2?family=Lato:ital,wght@0,400;0,700;0,900;1,400" rel="stylesheet" />
                <link href="https://fonts.googleapis.com/css2?family=Oswald:wght@400;500;600;700" rel="stylesheet" />
                <link rel="stylesheet" href="styles/style.css" />
                <script src="script/main.js"></script>
            </head>

            <body>
                <div class="page_container">
                    <xsl:for-each select="hotel/rooms/room">
                        <div id="modal{@id}" class="modal hide">
                            <div class="modal_content">
                                <div >
                                    <h3 class="deals">
                                        Deals:
                                    </h3>
                                    <hr />
                                    <xsl:for-each select="deals/deal">
                                        <div class="deals">
                                            <div class="deals_container">
                                                <div>
                                                    <xsl:value-of select="date" />
                                                </div>
                                                <div>
                                                    <xsl:value-of select="price" />
                                                </div>
                                            </div>

                                            <button>Book a room</button>
                                        </div>
                                    </xsl:for-each>
                                </div>
                            </div>
                            <div style="display:flex; justify-content: flex-end; margin: 2rem;">
                                <button data-close-id="{@id}">Close</button>
                            </div>
                        </div>
                        <div class="main_page">
                            <h1 class="modal_film_title">
                                ROOM <xsl:value-of select="roomNum" />
                            </h1>
                            <img class="film_image" src="{roomPic}"/>
                            <div class="main_page_content">
                                <div style="width: 100%; overflow: hidden;">
                                    <div style="width: 550px; float: left;">
                                        Room type - <xsl:value-of select="roomType" />
                                    </div>
                                    <div style="width: 550px; float: left;">
                                        Bed type - <xsl:value-of select="bedType" />
                                    </div>
                                    <div style="margin-left: 80px;">
                                        User rating: <xsl:value-of select="rating" />
                                    </div>
                                </div>
                                <div class="rating_container">
                                    <div class="core">

                                    </div>
                                    <div class="core">

                                    </div>
                                    <div class="rating">
                                        <img class="rating_image" src="{guarantee}"/>
                                    </div>
                                </div>

                                <h2 style="margin: 30px 0;">
                                    About
                                </h2>
                                <p>
                                    <xsl:value-of select="about" />
                                </p>
                                <button style="margin: 2rem 0;" data-id="{@id}">Buy Tickets</button>
                            </div>
                        </div>
                    </xsl:for-each>
                </div>
            </body>
        </html>
    </xsl:template>
</xsl:stylesheet>