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
    var preprintSection = document.querySelector('[data-preprint-limit]');
    var preprintCards = preprintSection
      ? Array.prototype.slice.call(preprintSection.querySelectorAll('[data-paper-card]'))
      : [];
    var preprintLimit = preprintSection ? parseInt(preprintSection.getAttribute('data-preprint-limit'), 10) : 4;
    var preprintMore = preprintSection ? preprintSection.querySelector('[data-preprint-more]') : null;
    var preprintToggle = preprintSection ? preprintSection.querySelector('[data-preprint-toggle]') : null;

    function setPreprintExpanded(expanded) {
      preprintCards.forEach(function (card, index) {
        card.hidden = !expanded && index >= preprintLimit;
      });

      if (preprintMore) {
        preprintMore.hidden = preprintCards.length <= preprintLimit;
      }
      if (preprintToggle) {
        preprintToggle.setAttribute('aria-expanded', expanded ? 'true' : 'false');
        preprintToggle.textContent = expanded ? 'See less' : 'See more';
      }
    }

    function restoreDefaults() {
      sections.forEach(function (section) {
        section.hidden = false;
        section.open = section.getAttribute('data-default-open') === 'true';
      });

      cards.forEach(function (card) {
        card.hidden = false;
      });
      setPreprintExpanded(false);
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

      // While searching, match against every paper, including collapsed preprints.
      if (preprintMore) {
        preprintMore.hidden = true;
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

    if (preprintToggle) {
      preprintToggle.addEventListener('click', function () {
        setPreprintExpanded(preprintToggle.getAttribute('aria-expanded') !== 'true');
      });
    }

    // Respect default-open sections and show only the first four preprints.
    restoreDefaults();

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
