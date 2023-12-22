class RacesSelector extends Selector {
    selected() {
        SelectorCollapseReload(this);
    }

    deselected() {
        SelectorCollapseReload(this);
    }
}

class SubracesSelector extends Selector {
    async reload() {
        let selector = document.querySelector("[data-type=\"" + this.type + "\"]");
        let body = selector.getElementsByClassName('selector-body').item(0);

        let id = _SELECTORS['races'].getValue();
        if(id == null) {
            body.innerHTML = "";
            selector.classList.add('hidden');
            return;
        }

        const address = "http://localhost/subraces/" + id;
        body.innerHTML = await this.load(address);
        selector.classList.remove('hidden');
    }
}

let races = new RacesSelector('races');
let subraces = new SubracesSelector('subraces');
races.add(subraces);

SelectorCollapseReload(races);