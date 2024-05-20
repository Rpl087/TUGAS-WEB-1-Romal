let btn_img = document.getElementById("button")
var count_click = 0;
let text = document.getElementById("text")
let body = document.getElementById("container")

btn_img.addEventListener("click", () => {
    if(count_click == 1) text.innerHTML = "Perkenalkan nama, Romal Lengkong, dengan Program Studi Teknik Informatika, Fakultas Teknik di Universitas Sam Ratulangi"
    else if(count_click == 2) body.style.backgroundColor = "#728C8F"
    else if(count_click == 3){
        text.innerHTML = null
        body.style.backgroundColor = "white"
    }
    count_click++
    if(count_click > 3){
        count_click = 0;
    }
    console.log(count_click)
})