(function () {
  'use strict';

  function configureLinks() {
    document.querySelectorAll('a[href]').forEach(function (link) {
      var href = link.getAttribute('href');

      if (!href || href.charAt(0) === '#') {
        return;
      }

      link.setAttribute('target', '_blank');

      var rel = (link.getAttribute('rel') || '').split(/\s+/).filter(Boolean);
      if (rel.indexOf('noopener') === -1) {
        rel.push('noopener');
      }
      if (rel.indexOf('noreferrer') === -1) {
        rel.push('noreferrer');
      }
      link.setAttribute('rel', rel.join(' '));
    });
  }

  if (document.readyState === 'loading') {
    document.addEventListener('DOMContentLoaded', configureLinks);
  } else {
    configureLinks();
  }
}());
