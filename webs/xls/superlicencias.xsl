<?xml version="1.0" encoding="UTF-8"?>
<!DOCTYPE xsl:stylesheet [
  <!ENTITY copy "entity-value">
]>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
<xsl:key name="escuderiaKey" match="f1/piloto" use="escuderia" />
  <xsl:template match="/">
    <html lang="es">
      <head>
        <meta charset="UTF-8" />
        <meta name="viewport" content="width=device-width, initial-scale=1.0" />
        <title>Superlicencias - Copa Mojón</title>
        <link rel="icon" type="image/png" href="../imgs/LogoCopaMojon.png" />
        <link rel="stylesheet" href="../css/index.css" />
        <link href='https://unpkg.com/boxicons@2.1.4/css/boxicons.min.css' rel='stylesheet' />
      </head>
      <body>
        <div>
        <div class="fia">
          <img src="../imgs/logofia.png" alt="fia_logo" />
          <h3>X</h3>
          <img src="../imgs/LogoCopaMojon.png" alt="" class="logo" />
        </div>
        <header>
                <div class="titulo link"><a href="../../index.html">
                        <h1>Copa Mojón 2024</h1></a></div>
                <nav>
                    <ul>
                        <li><a href="standing.html">Clasificacion
                                pilotos</a></li>
                        <li><a href="standingEscuderias.html">Clasificacion escuderias</a></li>
                        <li><a href="scheudle.html">Horarios</a></li>
                        <li><a href="superlicencias.html">Superlicencias</a></li>
                        <li><a href="rules.html">Info y reglas</a></li>
                        <li><a href="https://www.twitch.tv/extremsito"
                                target="_blank"><img
                                    src="../imgs/twitch.jpg" alt="20"
                                    width="20"/>Directo</a></li>
                    </ul>
                </nav>
            </header>
      </div>
      <h3 class="tituloN">Superlicencias</h3>

        <section class="pilotosS">
            <xsl:for-each select="/f1/piloto">
            <div class="caja {escuderia}1" id="superL">
                <!-- Primera parte: Puntos y foto de la persona -->
                <div class="usuario-info">
                    <div class="puntos"><h2>Puntos: <xsl:value-of select="superlicencia"/></h2></div>
                    <img src="../imgs/{imagenPiloto}" alt="Imagen del usuario" class="imagenP"/>
                </div>
        
                <!-- Segunda parte: Línea de color para diferenciar -->
                <div class="{escuderia}"></div>
        
                <!-- Tercera parte: Nombre y equipo de la persona -->
                <div class="nombre-equipo">
                    <h2><xsl:value-of select="nombre"/></h2>
                    <p>Escuderia: <xsl:value-of select="escuderia"/> </p>
                </div>
            </div>
            </xsl:for-each>
            
        </section>
        <footer>
          <div class="iconos"><a href="https://www.tiktok.com/@copamojon?lang=es" target="_blank"><i class="bx bxl-tiktok"></i></a><a href="https://twitter.com/CopaMojon" target="_blank"><i class="bx bxl-twitter"></i></a><a href="https://www.youtube.com/@Orpa55" target="_blank"><i class="bx bxl-youtube"></i></a></div>

          <div class="nav_abajo">
            <a href="standing.html">Clasificacion pilotos</a>
            <a href="standingEscuderias.html">Clasificacion escuderias</a>
            <a href="scheudle.html">Horarios</a>
            <a href="superlicencias.html">Superlicencias</a>
            <a href="rules.html">Info y reglas</a>
          </div>
          <div class="logo_copy">
            <p>©2024 Copa Mojón - Todos los derechos reservados</p>
          </div>
        </footer>
        
        <script src="../js/index.js"></script>
      </body>
    </html>
  </xsl:template>
</xsl:stylesheet>