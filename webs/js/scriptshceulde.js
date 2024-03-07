function toggleRow(row) {
    const elements = document.querySelectorAll(".row--details");

    elements.forEach(element => {
        if (element.classList.contains("show") && element !== row.nextElementSibling) {
            element.addEventListener("animationend", function () {
                element.classList.remove("show", "unshow");
            }, { once: true });

            element.classList.add("unshow");
        }
    });

    const details = row.nextElementSibling;
    if (details && details.classList.contains("row--details")) {
        details.classList.toggle("show");

        // Quitar el evento de clic para evitar problemas
        row.removeEventListener("click", rowClickHandler);

        // Agregar el evento de clic solo si la animación show se completa
        if (details.classList.contains("show")) {
            row.addEventListener("click", rowClickHandler, { once: true });
        }
    }
}

// Función de control para el evento de clic en la fila
function rowClickHandler() {
    toggleRow(this);
}

// Agrega el evento de clic a todas las filas
const rows = document.querySelectorAll(".row");
rows.forEach(row => {
    row.addEventListener("click", rowClickHandler);
});
