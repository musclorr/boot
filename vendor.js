// Use LANG environment variable to choose locale
pref("intl.locale.matchOS", true);

// Disable default browser checking.
pref("browser.shell.checkDefaultBrowser", false);

// Don't disable our bundled extensions in the application directory
pref("extensions.autoDisableScopes", 11);
pref("extensions.shownSelectionUI", true);

// backspace to go back plz
pref("browser.backspace_action", 0);

// do not ask to save password
pref("browser.syncPromoViewsLeftMap", "{\"passwords\":3}");

// do not ask to close tabs
pref("browser.tabs.warnOnClose", false);

pref("browser.startup.homepage" , "https://drive.google.com/");
