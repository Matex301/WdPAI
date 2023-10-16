
function selectorOnDoubleClick(element){
    //let element = document.getElementById('test');

    let body = element.parentElement;

    let selectors = body.getElementsByClassName('selector-object');
    
    if(element.classList.contains('selected')){
        element.classList.remove('selected');

        for(let i = 0; i < selectors.length; i++){
            let selector = selectors.item(i);
            selector.classList.remove('hidden');
        }

        return;
    } else {
        for(let i = 0; i < selectors.length; i++){
            let selector = selectors.item(i);
            selector.classList.add('hidden');
        }

        element.classList.remove('hidden');
        element.classList.add('selected');
    }

}