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
        <title>Standing Escuderias - Copa Mojón</title>
        <link rel="icon" type="image/png" href="../imgs/LogoCopaMojon.png" />
        <link rel="stylesheet" href="../css/index.css" />
        <link href='https://unpkg.com/boxicons@2.1.4/css/boxicons.min.css' rel='stylesheet' />
      </head>
      <body>
        <div>
        <div class="fia">
          <img src="../imgs/fia.avif" alt="fia_logo" />
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
        <section>
          <div class="miniStanding stanT">
            <h3 class="tituloN">Standing Escuderias</h3>
            <div class="stand">
              <div class="centrado"></div>
              <div class="centrado"> 
                <ul class="listaTop">
                  <div class="imagenes_top">
                    <xsl:for-each select="/f1/piloto">
                    <xsl:sort select="sum(./carreras/*[. != '-'])" order="descending" data-type="number"/>
                    <xsl:if test="position() &lt;= 3">
                   <div class="caja stTop">
                       <!-- Primera parte: Puntos y foto de la persona -->
                       <div class="usuario-info">
                           <img src="../imgs/{imagenEscuderia}" alt="Imagen del usuario" class="imagenP"/>
                       </div>
                       <!-- Tercera parte: Nombre y equipo de la persona -->
                       <div class="nombre-equipo box-oscu">
                         <h2><xsl:number value="position()" />º</h2>
                       </div>
                   </div>
                 </xsl:if>

                   </xsl:for-each>
                 </div>
                  <xsl:for-each select="f1/piloto[generate-id() = generate-id(key('escuderiaKey', escuderia)[1])]">
                  <xsl:sort select="sum(./carreras/*[. != '-'])" order="descending" data-type="number"/>
                  <xsl:variable name="currentEscuderia" select="escuderia"/>
                      <xsl:variable name="puntosTotales" select="sum(key('escuderiaKey', $currentEscuderia)/carreras/*[. != '-'])" />
                      <li class="standLista">
                        <div class="valLi">
                          <h3><xsl:number value="position()" />-</h3>
                          <h3><xsl:value-of select="$currentEscuderia" /></h3>
                          <p><xsl:value-of select="$puntosTotales" /><span>PTS</span></p>
                        </div>
                      </li>
                  </xsl:for-each>
              </ul>
            </div>
            </div>
          </div>
          <span class="espacio escu"> </span>
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