function onPoemLoad(poemDto) {

    const poemNameSpanEl = document.getElementById('poem-title');
    const poemPercentageSpanEl = document.getElementById('poem-body');

    poemNameSpanEl.textContent = poemDto.poem.title;
    poemPercentageSpanEl.innerHTML = poemDto.poem.content;
}

function onPoemResponse() {
    if (this.status === OK) {
        clearMessages();
        showContents(['poem-content', 'back-to-profile-content', 'logout-content']);
        onPoemLoad(JSON.parse(this.responseText));
    } else {
        onOtherResponse(poemsContentDivEl, this);
    }
}

function onCountButtonClicked() {
    const poemContent = document.getElementById('poem-body').textContent.toLowerCase();
    const wordForSearch = document.getElementById('word-count-search').value.toLowerCase();
    const matches = (poemContent.match(new RegExp(wordForSearch, 'g')) || []).length;
    alert('Occurences: ' + matches);
}