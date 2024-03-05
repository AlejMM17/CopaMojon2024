<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
  <xsl:template match="/">
    <html lang="es">
      <head>
        <meta charset="UTF-8" />
        <meta name="viewport" content="width=device-width, initial-scale=1.0" />
        <title>Página Principal - Copa Mojon</title>
        <link rel="icon" type="image/png" href="../imgs/LogoCopaMojon.png" />
        <link rel="stylesheet" href="../css/index.css" />
        <link href='https://unpkg.com/boxicons@2.1.4/css/boxicons.min.css' rel='stylesheet' />
      </head>
      <body>
        <div class="fia">
          <img src="../imgs/fia.avif" alt="fia_logo" />
          <h3>X</h3>
          <img src="../imgs/LogoCopaMojon.png" alt="" class="logo" />
        </div>
        <header>
          <div class="titulo">
            <h1>Copa Mojon 2024</h1>
          </div>
          <nav>
            <ul>
              <li>
                <a href="#">Clasificacion pilotos</a>
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
        <section>
          <div class="bienvenida">
            <img src="../imgs/bienvenidofoto1.avif" alt="coche" />
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
          <h3 class="tituloN">Ultima Carrera</h3>
          <div class="ultimaCarrera">
            <xsl:if test="f1/circuito/@id = 1">
            <div class="centrarIf">
              <div class="contenido-izquierda">
                <h3 class="circuitoN">
                  <xsl:value-of select="f1/circuito/nombre" />
                </h3>
                <br/>
                <br/>
                <div class="top">
                  <i class='bx bx-signal-1' style="color:#3671C6"></i>
                  <div class="piloto-tiempo">
                    <p class="polenombre">
                      <xsl:value-of select="f1/circuito/primero/piloto" />
                    </p>
                    <p class="tiempo">
                      <xsl:value-of select="f1/circuito/primero/tiempo" />
                    </p>
                  </div>
                </div>
                <div
                  class="top">
                  <i class='bx bx-signal-2' style="color:#3671C6"></i>
                  <div class="piloto-tiempo">
                    <p class="polenombre">
                      <xsl:value-of select="f1/circuito/segundo/piloto" />
                    </p>
                    <p class="tiempo">
                      <xsl:value-of select="f1/circuito/segundo/tiempo" />
                    </p>
                  </div>
                </div>
                <div
                  class="top">
                  <i class='bx bx-signal-3' style="color:#E8002D"></i>
                  <div class="piloto-tiempo">
                    <p class="polenombre">
                      <xsl:value-of select="f1/circuito/tercero/piloto" />
                    </p>
                    <p class="tiempo">
                      <xsl:value-of select="f1/circuito/tercero/tiempo" />
                    </p>
                  </div>
                </div>
              </div>
              <div class="contenido-derecha">
              <img src="../imgs/{f1/circuito/imagen}" class="circuitoIMG" />
            </div>
          </div>
            </xsl:if>
          </div>
          <div class="noticias">
            <h3 class="tituloNo">NOTICIAS</h3>
            <section>
              <article>
                <div>textogrande</div>
                <div>Imagen</div>
              </article>
              <div>
                <article>
                  <div>texto1</div>
                  <div>Imagen</div>
                </article>             
                <article>
                  <div>texto</div>
                  <div>Imagen</div>
                </article>
              </div>
              <div>
                <article>
                  <div>texto</div>
                  <div>Imagen</div>
                </article>
                <article>
                  <div>texto</div>
                  <div>Imagen</div>
                </article>          
              </div>
             
            </section>
          </div>
          <div class="horarios">
            horarios
          </div>
          <div class="miniStanding">
            top
          </div>
        </section>
        <footer>
          <div class="iconos"></div>
          <div class="nav_abajo"></div>
          <div class="logo_copy"></div>
        </footer>
      </body>
    </html>
  </xsl:template>
</xsl:stylesheet>