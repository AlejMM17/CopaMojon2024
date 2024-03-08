    /*No tocar, esto es para normas*/
    document.addEventListener("DOMContentLoaded", function() {
        // Selecciona todos los elementos con la clase "tituloDesplegable"
        const titulosDesplegables = document.querySelectorAll(".tituloDesplegable");
      
        // Itera sobre cada título y agrega un evento de clic
        titulosDesplegables.forEach(titulo => {
          titulo.addEventListener("click", function() {
            // Obtiene el identificador del desplegable desde el atributo "data-target"
            const targetId = this.getAttribute("data-target");
      
            // Selecciona el elemento del desplegable correspondiente
            const desplegable = document.getElementById(targetId);
      
            // Alternar la visibilidad del desplegable
            if (desplegable.style.display === "block") {
              desplegable.style.display = "none";
            } else {
              desplegable.style.display = "block";
            }
          });
        });
      });