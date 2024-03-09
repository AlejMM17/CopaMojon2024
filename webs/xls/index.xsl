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
          <div class="titulo link"><a href="../../index.html">
                  <h1>Copa Mojón 2024</h1></a></div>
          <nav>
              <ul>
                  <li><a href="webs/html/standing.html">Clasificacion
                          pilotos</a></li>
                  <li><a href="webs/html/standingEscuderias.html">Clasificacion escuderias</a></li>
                  <li><a href="webs/html/scheudle.html">Horarios</a></li>
                  <li><a href="#">Estadisticas generales</a></li>
                  <li><a href="#">Superlicencias</a></li>
                  <li><a href="webs/html/rules.html">Info y reglas</a></li>
                  <li><a href="https://www.twitch.tv/extremsito"
                          target="_blank"><img
                              src="webs/imgs/twitch.jpg" alt="20"
                              width="20"/>Directo</a></li>
              </ul>
          </nav>
      </header>
      </div>
        <section>
          <div class="bienvenida">
            <img src="webs/imgs/imgprincipal.webp" alt="coche" />
            <div class="bienT">
              <h2>¡Bienvenidos a la Emocionante Copa Mojón de F1 23!</h2>
              <br />
              <p>
                En la pista virtual donde la velocidad y la estrategia se encuentran, les damos la
    más cordial bienvenida a la Copa Mojón de F1 23. Prepárense para vivir la adrenalina de la
    competición automovilística más emocionante, donde pilotos virtuosos se enfrentarán en batallas
    épicas por la gloria.
              </p>
              <br />
              <p>
                Sumérgete en el mundo de la velocidad, desafía tus límites y experimenta la
    competencia en su máxima expresión. La Copa Mojón no solo es un torneo, ¡es un viaje apasionante
    lleno de giros inesperados y momentos épicos en la pista!
              </p>
              <br />
              <p>
                ¿Tienes lo necesario para conquistar la carretera virtual y destacar como el campeón
    supremo de la Copa Mojón de F1 23? ¡Únete a nosotros y descúbrelo! La emoción está a punto de
    desatarse, ¡que comience la carrera hacia la victoria!
              </p>
            </div>
          </div>
          <h3 class="tituloN">Última Carrera</h3>
          <div class="ultimaCarrera">
            <xsl:for-each select="f1/circuito">
            <xsl:if test="@id = '22'">
            <div class="centrarIf">
              <div class="contenido-izquierda">
                <h3 class="circuitoN">
                  <xsl:value-of select="nombre" />
                </h3>
                <br/>
                <br/>
                <div class="top">
                  <i class='bx bx-signal-1' style="color:#3671C6"></i>
                  <div class="piloto-tiempo">
                    <p class="polenombre">
                      <xsl:value-of select="primero/piloto" />
                    </p>
                    <p class="tiempo">
                      <xsl:value-of select="primero/tiempo" />
                    </p>
                  </div>
                </div>
                <div
                  class="top">
                  <i class='bx bx-signal-2' style="color:#3671C6"></i>
                  <div class="piloto-tiempo">
                    <p class="polenombre">
                      <xsl:value-of select="segundo/piloto" />
                    </p>
                    <p class="tiempo">
                      <xsl:value-of select="segundo/tiempo" />
                    </p>
                  </div>
                </div>
                <div
                  class="top">
                  <i class='bx bx-signal-3' style="color:#E8002D"></i>
                  <div class="piloto-tiempo">
                    <p class="polenombre">
                      <xsl:value-of select="tercero/piloto" />
                    </p>
                    <p class="tiempo">
                      <xsl:value-of select="tercero/tiempo" />
                    </p>
                  </div>
                </div>
              </div>
              <div class="contenido-derecha">
              <img src="../imgs/{imagen}" class="circuitoIMG" />
            </div>
          </div>
            </xsl:if>
          </xsl:for-each>
          </div>
          <div class="noticias">
            <h3 class="tituloNo">NOTICIAS</h3>
            <section>
              <article class="art1"> 
                <div>
                  <h4 class="notiTitulo">¡La Esperada Vuelta de la Copa Mojón es una Realidad!</h4> <br/>
                  <p class="notiTexto">¡Emoción y competencia están de vuelta con la resplandeciente reaparición de la Copa Mojón! Después de una pausa llena de expectativas, los motores vuelven a rugir y los pilotos se preparan para desafiar la pista en la tan esperada temporada de la Copa Mojón. Este emocionante regreso promete momentos de pura adrenalina, estrategias fascinantes y carreras que mantendrán a los fanáticos al borde de sus asientos. ¡Prepárate para sumergirte en la acción de la competición más emocionante del mundo automovilístico, la Copa Mojón está de vuelta para llevar la emoción a nuevos niveles!</p>
                </div>
                <div class="notiI1">
                  <img src="../imgs/parrillaf12.jpeg" alt=""/>
                </div>
              </article>
              <div class="notiDual">
                <article>
                  <div>
                    <img src="../imgs/proximamente.png"  alt=""/>
                  </div>
                  <div>
                    <h4>Próximamente</h4> <br/>
                    <p>Futuras Noticias de la Copa Mojón</p>
                  </div>
                </article>             
                <article>
                  <div>
                    <img src="../imgs/proximamente.png"  alt=""/>
                  </div>
                  <div>
                    <h4>Próximamente</h4> <br/>
                    <p>Futuras Noticias de la Copa Mojón</p>
                  </div>
                </article>
              </div>
              <div class="notiDual">
                <article>
                  <div>
                    <img src="../imgs/proximamente.png"  alt=""/>
                  </div>
                  <div>
                    <h4>Próximamente</h4> <br/>
                    <p>Futuras Noticias de la Copa Mojón</p>
                  </div>
                </article>
                <article>
                  <div>
                    <img src="../imgs/proximamente.png"  alt=""/>
                  </div>
                  <div>
                    <h4>Próximamente</h4> <br/>
                    <p>Futuras Noticias de la Copa Mojón</p>
                  </div>
                </article>
              </div>
            </section>
          </div>
          <div class="horarios">
            <h3 class="tituloN">Siguiente Carrera</h3>
            <h3 class="tempo"><span id="days"></span> días / <span id="hours"></span> horas / <span id="minutes"></span> minutos / <span id="seconds"></span> segundos</h3>
          </div>
          <div class="miniStanding">
            <h3 class="tituloN">Standing</h3>
            <div class="stand">
              <div class="centrado"></div>
              <div class="centrado"> 
                <ul class="listaTop">
                  <xsl:for-each select="/f1/piloto">
                  <xsl:sort select="sum(carreras/*)" order="descending" data-type="number"/>    
                  <xsl:if test="position() &lt;= 9">
        <li class="standLista">
            <div class="valLi">
                <h3><xsl:number value="position()" /></h3>
                <span class="separator">-</span>
                <h3><xsl:value-of select="nombre" /></h3>
                <h5><xsl:value-of select="escuderia" /></h5>
                <p><xsl:value-of select="sum(carreras/*)" /><span>PTS</span></p>
            </div>
        </li>
    </xsl:if>
</xsl:for-each>
              </ul>
            </div>
              <a class="btn" href="../html/standing.html">Ver Standing completo</a>
            </div>
          </div>
        </section>
        <footer>
          <div class="iconos"><a href="https://www.tiktok.com/@copamojon?lang=es" target="_blank"><i class="bx bxl-tiktok"></i></a><a href="https://twitter.com/CopaMojon" target="_blank"><i class="bx bxl-twitter"></i></a><a href="https://www.youtube.com/@Orpa55" target="_blank"><i class="bx bxl-youtube"></i></a></div>

          <div class="nav_abajo">
            <a href="webs/html/standing.html">Clasificacion pilotos</a>
            <a href="webs/html/standingEscuderias.html">Clasificacion escuderias</a>
            <a href="webs/html/scheudle.html">Horarios</a>
            <a href="#">Estadisticas generales</a>
            <a href="#">Superlicencias</a>
            <a href="webs/html/rules.html">Info y reglas</a>
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