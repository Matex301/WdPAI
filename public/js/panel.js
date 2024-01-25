class User {
    constructor(id, username, email, characters) {
        this.id = id;
        this.username = username;
        this.email = email;
        this.characters = characters;
    }

    renderHtml() {
        let result = "";
        result += '<div class="panel">';
        result +=   '<div class="id">' + this.id + '</div>';
        result +=   '<div class="username">' + this.username + '</div>';
        result +=   '<div class="email">' + this.email + '</div>';
        result +=   '<div class="characters">' + this.characters + '</div>';
        result +=   '<div class="delete"><button onclick="onClickDelete(' + this.id + ')">Delete</button></div>';
        result += '</div>'

        return result;
    }
}

function renderHeaderHtml() {
    let result = "";
    result += '<div class="panel panel-header">'
    result +=     '<div class="id">Id</div>'
    result +=     '<div class="username">Username</div>'
    result +=     '<div class="email">Email</div>'
    result +=     '<div class="characters">Characters</div>'
    result +=     '<div class="delete"></div>'
    result += '</div>'

    return result;
}

async function loadPanels() {
    let container = document.getElementById('panel-container');

    let result = "";
    result += renderHeaderHtml();

    let panels = await fetchData();
    panels.forEach(obj => {
        result += obj.renderHtml();
    })

    container.innerHTML = result;
}

async function onClickDelete(id) {
    let url = window.location + '/' + id;
    const response = await fetch(url, {method: 'DELETE', credentials: "include"});

    loadPanels();
}

async function fetchData() {
    const response = await fetch(window.location, {method: 'POST', credentials: "include"});
    const json = await response.json();

    if (!response.ok)
        return "";

    let result = [];
    json.forEach(obj => {
        result.push(new User(obj.id, obj.username, obj.email, obj.count));
    })

    return result;
}

loadPanels();