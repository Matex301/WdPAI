function saveData() {
    let data = {};
    data.id = /[^/]*$/.exec(window.location)[0];
    data.name = document.getElementById('name-input').value;
    data.stats = score.getStats();

    if(subraces.getValue())
        data.race = subraces.getValue();
    else
        data.race = races.getValue();

    data.background = backgrounds.getValue();
    data.class = classes.getValue();
    data.subclass = subclasses.getValue();
    data.selected = characterData.selected; //TODO
    data.owner = characterData.owner; //TODO
    data.public = characterData.isPublic; //TODO

    return data;
}


function sendData() {
    let data = saveData();
    console.log(JSON.stringify(data));
    fetch("http://localhost/builder/" + data.id, {
        method: 'PUT',
        credentials: "include",
        headers: {
            'Content-type': 'application/json'
        },
        body: JSON.stringify(data)
    }).then(response => {
        const message = response;
        console.log(message);
    });
    downloadProf();
}