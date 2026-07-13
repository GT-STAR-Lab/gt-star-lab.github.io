(function () {
  'use strict';

  function initializePaperSearch() {
    var searchInput = document.getElementById('paper-search-input');
    var clearButton = document.querySelector('.paper-search__clear');
    var status = document.getElementById('paper-search-status');
    var sections = Array.prototype.slice.call(document.querySelectorAll('[data-paper-section]'));

    if (!searchInput || !clearButton || !status || !sections.length) {
      return;
    }

    var cards = Array.prototype.slice.call(document.querySelectorAll('[data-paper-card]'));

    function restoreDefaults() {
      sections.forEach(function (section) {
        section.hidden = false;
        section.open = section.getAttribute('data-default-open') === 'true';
      });

      cards.forEach(function (card) {
        card.hidden = false;
      });
    }

    function updateResults() {
      var query = searchInput.value.trim().toLowerCase().replace(/\s+/g, ' ');
      var terms = query ? query.split(' ') : [];

      clearButton.hidden = !query;

      if (!query) {
        restoreDefaults();
        status.textContent = '';
        return;
      }

      var matchingTotal = 0;

      sections.forEach(function (section) {
        var sectionCards = Array.prototype.slice.call(section.querySelectorAll('[data-paper-card]'));
        var matchingSection = 0;

        sectionCards.forEach(function (card) {
          var searchableText = card.getAttribute('data-search') || '';
          var matches = terms.every(function (term) {
            return searchableText.indexOf(term) !== -1;
          });

          card.hidden = !matches;
          if (matches) {
            matchingSection += 1;
            matchingTotal += 1;
          }
        });

        section.hidden = matchingSection === 0;
        section.open = matchingSection > 0;
      });

      status.textContent = matchingTotal === 1 ? '1 paper found.' : matchingTotal + ' papers found.';
    }

    searchInput.addEventListener('input', updateResults);
    searchInput.addEventListener('keydown', function (event) {
      if (event.key === 'Escape' && searchInput.value) {
        searchInput.value = '';
        updateResults();
      }
    });

    clearButton.addEventListener('click', function () {
      searchInput.value = '';
      updateResults();
      searchInput.focus();
    });
  }

  if (document.readyState === 'loading') {
    document.addEventListener('DOMContentLoaded', initializePaperSearch);
  } else {
    initializePaperSearch();
  }
}());
