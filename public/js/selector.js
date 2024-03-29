
function selectorOnDoubleClick(element){
    let body = element.parentElement;
    let selectors = body.getElementsByClassName('selector-object');
    let type = element.parentElement.parentElement.dataset.type;

    if(element.classList.contains('selected')){
        element.classList.remove('selected');

        for(let i = 0; i < selectors.length; i++){
            let selector = selectors.item(i);
            selector.classList.remove('hidden');

        }
        _SELECTORS[type].deselected();

    } else {
        for(let i = 0; i < selectors.length; i++){
            let selector = selectors.item(i);
            selector.classList.add('hidden');
        }

        element.classList.remove('hidden');
        element.classList.add('selected');

        _SELECTORS[type].selected();
    }
}

function selectorOnClick(element) {
    let infoBody = element.parentElement.parentElement.parentElement.parentElement.getElementsByClassName('body-information').item(0);
    let type = element.parentElement.parentElement.dataset.type;

    let id = parseInt(element.dataset.id);
    let selector = _SELECTORS[type];

    infoBody.innerHTML = selector.renderInfo(id);
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

    setValue(id) {
        let selector = document.querySelector("[data-type=\"" + this.type + "\"]");
        let selected = selector.querySelector('.selected');

        if(selected)
            selectorOnDoubleClick(selected);

        let toSelected = selector.querySelector("[data-id=\"" + id + "\"]");
        selectorOnDoubleClick(toSelected)
    }

    async load(address) {
        const response = await fetch(address, {method: 'POST'});
        const json = await response.json();

        if (!response.ok)
            return "";

        this.json = json;

        return this.render();
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

    selected() {

    }

    deselected() {

    }
    render() {
        let result = "";
        for (let i = 0; i < this.json.length; i++) {
            let data = this.json[i];
            let id = data.id;
            let name = data.name;

            result += "<div class=\"selector-object\" data-id=\"" + id + "\" ondblclick=\"selectorOnDoubleClick(this)\" onclick=\"selectorOnClick(this)\"> " + name + " </div>" + "\n";
        }
        return result;
    }

    renderInfo(id) {
        let data;
        for(let i = 0; i < this.json.length; i++){
            if(this.json[i].id === id){
                data = this.json[i];
                break;
            }
        }

        let result = "";

        result += "<div class='entry-header'>"
        result += data.name;
        result += "</div>";

        for(let i = 0; i < data.entries.length; i++) {
            result += "<div class='entry'>";
            result += "<div class='entry-name'> " + data.entries[i].name + " </div>";
            result += "<div class='entry-description'> " + data.entries[i].description + " </div>";
            result += "</div>";
        }
        return result;
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