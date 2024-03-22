document.addEventListener("DOMContentLoaded", function() {
    const paragraphs = document.querySelectorAll("p");
    let delay = 250;

    paragraphs.forEach((paragraph, index) => {
        paragraph.style.opacity = "0";
        setTimeout(() => {
            paragraph.style.opacity = "1";
        }, delay);
        delay += delay * 0.06; // Adjust the delay as needed
    });
});
