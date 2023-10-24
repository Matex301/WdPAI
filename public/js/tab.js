function openTab(name) {
    let nav = document.getElementsByClassName("nav-button");
    for(let i = 0; i < nav.length; i++){
        nav[i].className = nav[i].className.replace(" active", "");
    }

    let tab = document.getElementsByClassName("tab");
    for(let i = 0; i < tab.length; i++){
        tab[i].className = tab[i].className.replace(" active", "");
    }

    document.getElementById('tab-' + name).className += " active";
    document.getElementById('nav-button-' + name).className += " active";
}