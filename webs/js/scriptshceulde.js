/*
const elements = document.querySelectorAll(".row--details");
function toggleRow(row) {
    for(let i = 0; i < elements.length; i++){
        if(elements[i].classList.contains("show")){
            elements[i].classList.add("unshow");
            setTimeout(() => {
                elements[i].classList.remove("show");
            }, 600)
        }
    }


    for(let i = 0; i < elements.length; i++){
            elements[i].classList.remove("unshow");
    }

    details.classList.toggle("show");
  }
  */
  function toggleRow(row) {
    const elements = document.querySelectorAll(".row--details");

    for (let i = 0; i < elements.length; i++) {
        if (elements[i].classList.contains("show") && elements[i] !== row.nextElementSibling) {
            elements[i].classList.add("unshow");
            setTimeout(() => {
                elements[i].classList.remove("show", "unshow");
            }, 600);
        }
    }

    const details = row.nextElementSibling;
    if (details && details.classList.contains("row--details")) {
        details.classList.toggle("show");
        row.removeAttribute("onclick");
    }
}

