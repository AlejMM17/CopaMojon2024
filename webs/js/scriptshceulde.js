function toggleRow(row) {
    const elements = document.querySelectorAll(".row--details");
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

    const details = row.nextElementSibling;
    details.classList.toggle("show");
  }