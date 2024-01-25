class CharacterData {
    constructor(id, name, stats, race, subrace, background, classId, subclass, selected, owner, isPublic) {
        this.id = id;
        this.name = name;
        this.stats = stats;
        this.race = race;
        this.subrace = subrace;
        this.background = background;
        this.classId = classId;
        this.subclass = subclass;
        this.selected = selected;
        this.owner = owner;
        this.isPublic = isPublic;
    }
}
let characterData;
async function downloadData(id) {
    const response = await fetch("http://localhost/builder/" + id, {method: 'POST'});
    const json = await response.json();

    if (!response.ok) {
        console.log('Failed to load ')
    }

    characterData = new CharacterData(json.id, json.name, json.stats, json.race, json.subrace, json.background, json.class, json.subclass, json.selected, json.owner, json.public);
}

async function loadData() {
    if(!characterData)
        return;

    await new Promise(sleep => setTimeout(sleep, 100));
    if (characterData.subrace) {
        races.setValue(characterData.subrace);
        await new Promise(sleep => setTimeout(sleep, 100));
        subraces.setValue(characterData.race);
    } else if (characterData.race) {
        races.setValue(characterData.race);
    }

    score = new SelectorScore(characterData.stats);
    score.setStats();

    if (characterData.classId) {
        classes.setValue(characterData.classId);
        if (characterData.subclass) {
            await new Promise(sleep => setTimeout(sleep, 100));
            subclasses.setValue(characterData.subclass);
        }
    }

    if (characterData.background)
        backgrounds.setValue(characterData.background);

    if(characterData.name)
        document.getElementById('name-input').value = characterData.name;
}

function executeLoad() {
    let id = /[^/]*$/.exec(window.location)[0];
    downloadData(id).then(r => {
        loadData();
    });
}

executeLoad();