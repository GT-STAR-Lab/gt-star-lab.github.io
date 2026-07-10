(function () {
  'use strict';

  var storageKey = 'star-theme';
  var root = document.documentElement;
  var toggle = document.querySelector('[data-theme-toggle]');
  var mediaQuery = window.matchMedia
    ? window.matchMedia('(prefers-color-scheme: dark)')
    : null;

  if (!toggle) {
    return;
  }

  function storedTheme() {
    try {
      var value = localStorage.getItem(storageKey);
      return value === 'light' || value === 'dark' ? value : null;
    } catch (error) {
      return null;
    }
  }

  function saveTheme(theme) {
    try {
      localStorage.setItem(storageKey, theme);
    } catch (error) {
      // The selected theme still applies for this page when storage is blocked.
    }
  }

  function applyTheme(theme, persist) {
    var isDark = theme === 'dark';
    var nextTheme = isDark ? 'light' : 'dark';
    var label = 'Switch to ' + nextTheme + ' mode';

    root.setAttribute('data-theme', theme);
    toggle.setAttribute('aria-pressed', String(isDark));
    toggle.setAttribute('aria-label', label);
    toggle.setAttribute('title', label);

    if (persist) {
      saveTheme(theme);
    }
  }

  applyTheme(root.getAttribute('data-theme') === 'dark' ? 'dark' : 'light', false);

  toggle.addEventListener('click', function () {
    var nextTheme = root.getAttribute('data-theme') === 'dark' ? 'light' : 'dark';
    applyTheme(nextTheme, true);
  });

  if (mediaQuery) {
    var handleSystemChange = function (event) {
      if (!storedTheme()) {
        applyTheme(event.matches ? 'dark' : 'light', false);
      }
    };

    if (mediaQuery.addEventListener) {
      mediaQuery.addEventListener('change', handleSystemChange);
    } else if (mediaQuery.addListener) {
      mediaQuery.addListener(handleSystemChange);
    }
  }
}());
