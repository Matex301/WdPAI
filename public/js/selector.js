
function selectorOnDoubleClick(element){
    let body = element.parentElement;
    let selectors = body.getElementsByClassName('selector-object');

    if(element.classList.contains('selected')){
        element.classList.remove('selected');

        for(let i = 0; i < selectors.length; i++){
            let selector = selectors.item(i);
            selector.classList.remove('hidden');

        }

    } else {
        for(let i = 0; i < selectors.length; i++){
            let selector = selectors.item(i);
            selector.classList.add('hidden');
        }

        element.classList.remove('hidden');
        element.classList.add('selected');

    }
}

function selectorOnClick(element) {
    let infoBody = element.parentElement.parentElement.parentElement.parentElement.getElementsByClassName('body-information').item(0);
    let type = element.parentElement.parentElement.dataset.type;

    let id = element.dataset.id;
    let json = _SELECTORS[type].json;

    let data;
    for(let i = 0; i < json.length; i++){
        if(json[i].id == id){
            data = json[i].entries;
            break;
        }
    }

    let result = "";
    for(let i = 0; i < data.length; i++) {
        result += "<div class='entry'>";
        result += "<div class='entry-name'> " + data[i].name + " </div>";
        result += "<div class='entry-description'> " + data[i].description + " </div>";
        result += "</div>";
    }

    infoBody.innerHTML = result;
}

class Hierarchy {
    constructor(type) {
        this.children = [];
        this.type = type;
    }

    add(child){
        this.children.push(child);
    }

    remove(child) {
        const length = this.children.length;
        for (let i = 0; i < length; i++) {
            if (this.children[i] === child) {
                this.children.splice(i, 1);
                return;
            }
        }
    }

    getChild(i) {
        return this.children[i];
    }

    hasChildren() {
        return this.children.length > 0;
    }
}

let _SELECTORS = {};
class Selector extends Hierarchy{
    constructor(type) {
        super(type);
        this.json = null;
        _SELECTORS[type] = this;
    }
    getValue(){
        let selector = document.querySelector("[data-type=\"" + this.type + "\"]");
        let selected = selector.querySelector('.selected');

        if(!selected)
            return null;

        return selected.dataset.id;
    }

    async load(address) {
        const response = await fetch(address, {method: 'POST'});
        const json = await response.json();

        if (!response.ok)
            return "";

        this.json = json;

        let result = "";
        for (let i = 0; i < json.length; i++) {
            let data = json[i];
            let id = data.id;
            let name = data.name;

            result += "<div class=\"selector-object\" data-id=\"" + id + "\" ondblclick=\"selectorOnDoubleClick(this)\" onclick=\"selectorOnClick(this)\"> " + name + " </div>" + "\n";
        }

        return result;
    }

    async reload() {
        let selector = document.querySelector("[data-type=\"" + this.type + "\"]");
        let body = selector.getElementsByClassName('selector-body').item(0);

        if(this.getValue() != null)
            return;

        const address = "http://localhost/" + this.type;
        body.innerHTML = await this.load(address);
    }

    clear() {
        let selector = document.querySelector("[data-type=\"" + this.type + "\"]");
        let body = selector.getElementsByClassName('selector-body').item(0);

        body.innerHTML = "";
    }
}

function SelectorCollapseClear(selector){
    //CALL CHILDREN
    for (let i = 0; i < selector.children.length; i++) {
        SelectorCollapseClear(selector.getChild(i));
    }

    //RUN ACTION
    selector.clear();
}

async function SelectorCollapseReload(selector) {
    //RUN ACTION
    await selector.reload();

    //CALL CHILDREN
    for (let i = 0; i < selector.children.length; i++) {
        await SelectorCollapseReload(selector.getChild(i));
    }
}