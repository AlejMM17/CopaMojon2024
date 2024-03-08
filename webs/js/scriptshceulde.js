// // function toggleRow(row) {
// //     const elements = document.querySelectorAll(".row--details");

// //     elements.forEach(element => {
// //         if (element.classList.contains("show") && element !== row.nextElementSibling) {
// //             element.addEventListener("animationend", function () {
// //                 element.classList.remove("show", "unshow");
// //             }, { once: true });

// //             element.classList.add("unshow");
// //         }
// //     });

// //     const details = row.nextElementSibling;
// //     if (details && details.classList.contains("row--details")) {
// //         details.classList.toggle("show");

// //         // Quitar el evento de clic para evitar problemas
// //         row.removeEventListener("click", rowClickHandler);

// //         // Agregar el evento de clic solo si la animación show se completa
// //         if (details.classList.contains("show")) {
// //             row.addEventListener("click", rowClickHandler, { once: true });
// //         }
// //     }
// // }

// // // Función de control para el evento de clic en la fila
// // function rowClickHandler() {
// //     toggleRow(this);
// // }

// // // Agrega el evento de clic a todas las filas
// // const rows = document.querySelectorAll(".row");
// // rows.forEach(row => {
// //     row.addEventListener("click", rowClickHandler);
// // });
// // function toggleRow(row) {
// //     const elements = document.querySelectorAll(".row--details");
  
// //     elements.forEach(element => {
// //       if (element.classList.contains("show") && element !== row.nextElementSibling) {
// //         element.classList.remove("show");
// //       }
// //     });
  
// //     const details = row.nextElementSibling;
// //     if (details && details.classList.contains("row--details")) {
// //       details.classList.toggle("show");
  
// //       // Remove the event listener for the row
// //       row.removeEventListener("click", rowClickHandler);
  
// //       // Add the event listener for the row only if the details are shown
// //       if (details.classList.contains("show")) {
// //         row.addEventListener("click", () => toggleRow(row), { once: true });
// //       }
// //     }
// //   }
  
// //   function rowClickHandler(event) {
// //     toggleRow(event.target.closest(".row"));
// //   }
  
// //   // Attach the event listener to all rows
// //   document.querySelectorAll(".row").forEach(row => {
// //     row.addEventListener("click", rowClickHandler);
// //   });
// function toggleRow(row) {
//     const elements = document.querySelectorAll(".row--details");
  
//     elements.forEach(element => {
//       if (element.classList.contains("show") && element !== row.nextElementSibling) {
//         element.classList.remove("show");
//       }
//     });
  
//     const details = row.nextElementSibling;
//     if (details && details.classList.contains("row--details")) {
//       details.classList.toggle("show");
  
//       // Always add the event listener for the row
//       row.addEventListener("click", () => toggleRow(row), { once: true });
//     }
//   }
// Add the event listener for the rows only once when the page loads
document.querySelectorAll(".row").forEach(row => {
    row.addEventListener("click", rowClickHandler);
  });
  
  function rowClickHandler(event) {
    toggleRow(event.target.closest(".row"));
  }
  
  function toggleRow(row) {
    const elements = document.querySelectorAll(".row--details");
  
    // Remove the 'show' class from all elements
    elements.forEach(element => {
      element.classList.remove("show");
    });
  
    const details = row.nextElementSibling;
    if (details && details.classList.contains("row--details")) {
      // Toggle the 'show' class only for the related details element
      details.classList.toggle("show");
    }
  }