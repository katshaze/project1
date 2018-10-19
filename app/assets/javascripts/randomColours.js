function ran_col() { //function name
    var color = '#'; // hexadecimal starting symbol
    var letters = ['000000','FF0000','00FF00','0000FF','FFFF00','00FFFF','FF00FF','C0C0C0']; //Set your colors here
    color += letters[Math.floor(Math.random() * letters.length)];
    return color;
}

function randomPastel() {
    let cssHSL = "hsl(" + 360 * Math.random() + ',' + (25 + 70 * Math.random()) + '%,' + (85 + 10 * Math.random()) + '%)';
    return cssHSL;
}

document.addEventListener("DOMContentLoaded", function() {
    const emptyThumbs = document.getElementsByClassName('empty-thumb');
    const emptyBabyThumbs = document.getElementsByClassName('empty-thumb-baby');
    for (let i=0; i < emptyThumbs.length; i++) {
        emptyThumbs[i].style.backgroundColor = randomPastel(); // Setting the random color on your div element.
    }
    for (let i=0; i < emptyBabyThumbs.length; i++) {
        emptyBabyThumbs[i].style.backgroundColor = randomPastel(); // Setting the random color on your div element.
    }
  });



