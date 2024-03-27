document.addEventListener("DOMContentLoaded", function() {
    const paragraphs = document.querySelectorAll("p");
    let delay = 200;

    paragraphs.forEach((paragraph, index) => {
        paragraph.style.opacity = "0";
        setTimeout(() => {
            paragraph.style.opacity = "1";
        }, delay);
        delay += delay * 0.06; // Adjust the delay as needed
    });
});

let Anchors = document.getElementsByTagName("a");

for (let i = 0; i < Anchors.length ; i++) {
    Anchors[i].addEventListener("click",
        function (event) {
            event.preventDefault();
            setTimeout(() => {}, 500)
            let p = document.getElementById("cmd");
            p.append("clear")
            window.location = this.href;
        },
        false);
}