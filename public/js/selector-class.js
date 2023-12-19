class ClassesSelector extends Selector {
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

        for(let i = 0; i < data.features.length; i++) {
            result += "<div class='entry'>";
            result += "<div class='entry-name'> " + data.features[i].name + " <div class='entry-level'> " + data.features[i].level + " </div></div>";
            result += "<div class='entry'>";
            for(let j = 0; j < data.features[i].entries.length; j++) {
                if(data.features[i].entries[j].name != null)
                    result += "<div class='entry-name'> " + data.features[i].entries[j].name + " </div>";
                result += "<div class='entry-description'> " + data.features[i].entries[j].description + " </div>";
            }
            result += "</div>";
            result += "</div>";
        }
        return result;
    }
}

let classes = new ClassesSelector('classes');
SelectorCollapseReload(classes);