<?xml version="1.0" encoding="UTF-8"?>
<!DOCTYPE xsl:stylesheet [
  <!ENTITY copy "entity-value">
]>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
  <xsl:template match="/">
    <html lang="es">
      <head>
        <meta charset="UTF-8" />
        <meta name="viewport" content="width=device-width, initial-scale=1.0" />
        <title>Página Principal - Copa Mojón</title>
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
          <div class="titulo">
            <h1>Copa Mojón 2024</h1>
          </div>
          <nav>
            <ul>
              <li>
                <a href="standing.html">Clasificacion pilotos</a>
              </li>
              <li>
                <a href="#">Clasificacion escuderias</a>
              </li>
              <li>
                <a href="#">Horarios</a>
              </li>
              <li>
                <a href="#">Estadisticas generales</a>
              </li>
              <li>
                <a href="#">Superlicencias</a>
              </li>
              <li>
                <a href="#">Info y reglas</a>
              </li>
            </ul>
          </nav>
        </header>
      </div>
        <section>
          <div class="miniStanding">
            <h3 class="tituloN">Standing</h3>
            <div class="stand">
              <div class="centrado"></div>
              <div class="centrado"> 
                <ul class="listaTop">
                <xsl:for-each select="/f1/piloto">
                  <xsl:sort select="sum(carreras/*[. != '-'])" order="descending"/>
                  <xsl:if test="posicion">
                    <li class="standLista">
                      <div class="valLi">
                        <h3><xsl:value-of select="posicion" /></h3>
                        <span class="separator">-</span>
                        <h3><xsl:value-of select="nombre" /></h3>
                        <p><xsl:value-of select="sum(carreras/*[. != '-'])" /><span>pts</span></p>
                      </div>
                    </li>                  
                  </xsl:if>
                </xsl:for-each>
              </ul>
            </div>
              <a class="btn" href="#">Ver Standing completo</a>
            </div>
          </div>
        </section>
        <footer>
          <div class="iconos">
            <a href=""><i class='bx bxl-tiktok'></i></a>
            <a href=""><i class='bx bxl-twitter'></i></a>
            <a href=""><i class='bx bxl-instagram'></i></a>
          </div>
          <div class="nav_abajo">
            <a href="standing.html">Clasificacion pilotos</a>
            <a href="#">Clasificacion escuderias</a>
            <a href="#">Horarios</a>
            <a href="#">Estadisticas generales</a>
            <a href="#">Superlicencias</a>
            <a href="#">Info y reglas</a>
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