class Panel {

    constructor(id, name, className, level) {
        this.id = id;
        this.name = name;
        this.className = className || "None";
        this.level = level;
    }


    renderHtml() {
        let result = "";

        result += `<div class="panel" data-id="${this.id}" onclick="redirect(this)">`;
        result +=     '<div class="img">';
        result +=         '<img src="/public/img/fighter-icon.svg">';
        result +=     '</div>';
        result +=     '<div class="text">';
        result +=         '<p class="name">' + this.name + '</p>';
        result +=         '<p class="class">' + this.className + '</p>';
        result +=         '<p class="level">Level 20</p>';
        result +=     '</div>';
        result += '</div>';

        return result;
    }
}

function redirect(element) {
    let id = element.dataset.id;
    window.location.href = '/builder/' + id;
}

function renderAddPanel() {
    let result = "";

    result += '<div class="panel" onclick="onClickAdd()">';
    result +=     '<div class="plus"></div>';
    result += '</div>';

    return result;
}

function onClickAdd() {
    window.location.href = '/create';
}

async function loadPanels() {
    let container = document.getElementById('panel-container');

    let result = "";

    let panels = await fetchData();
    panels.forEach(obj => {
        result += obj.renderHtml();
    })

    result += renderAddPanel();
    container.innerHTML = result;
}

async function fetchData() {
    const response = await fetch(window.location, {method: 'POST', credentials: "include"});
    const json = await response.json();

    if (!response.ok)
        return "";

    let result = [];
    json.forEach(obj => {
        result.push(new Panel(obj.id, obj.name, obj.class, 20));
    })

    return result;
}

loadPanels();