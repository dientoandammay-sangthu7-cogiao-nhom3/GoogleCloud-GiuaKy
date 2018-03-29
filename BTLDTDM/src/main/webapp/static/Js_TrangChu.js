function myFunction() {
    var x = document.getElementById("myTopnav");
    if (x.className === "header-navigation pull-right font-transform-inherit") {
        x.className += " responsive";
    } else {
        x.className = "header-navigation pull-right font-transform-inherit";
    }
}