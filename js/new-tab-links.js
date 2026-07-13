(function () {
  'use strict';

  var fileExtensions = [
    '7z', 'avi', 'bib', 'csv', 'doc', 'docx', 'gif', 'gz', 'jpeg', 'jpg',
    'json', 'mov', 'mp3', 'mp4', 'ogg', 'pdf', 'png', 'ppt', 'pptx', 'rar',
    'svg', 'tar', 'tex', 'tif', 'tiff', 'tsv', 'txt', 'wav', 'webm', 'webp',
    'xls', 'xlsx', 'xml', 'zip'
  ];

  function normalizeHostname(hostname) {
    return hostname.toLowerCase().replace(/^www\./, '');
  }

  function isInternalHostname(hostname) {
    var internalHostnames = [
      normalizeHostname(window.location.hostname),
      'star-lab.cc.gatech.edu',
      'gt-star-lab.github.io'
    ];

    return internalHostnames.indexOf(normalizeHostname(hostname)) !== -1;
  }

  function isFileLink(link, url) {
    if (link.hasAttribute('download')) {
      return true;
    }

    var extensionMatch = url.pathname.toLowerCase().match(/\.([a-z0-9]+)$/);
    return extensionMatch !== null && fileExtensions.indexOf(extensionMatch[1]) !== -1;
  }

  function shouldOpenInNewTab(link, href) {
    var url;

    try {
      url = new URL(href, window.location.href);
    } catch (error) {
      return false;
    }

    if (url.protocol !== 'http:' && url.protocol !== 'https:') {
      return false;
    }

    return !isInternalHostname(url.hostname) || isFileLink(link, url);
  }

  function configureLinks() {
    document.querySelectorAll('a[href]').forEach(function (link) {
      var href = link.getAttribute('href');

      if (!href || !shouldOpenInNewTab(link, href)) {
        if (link.getAttribute('target') === '_blank') {
          link.removeAttribute('target');
        }
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
