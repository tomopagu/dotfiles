module.exports = {
  config: {
    // default font size in pixels for all tabs
    fontSize: 14,

    // font family with optional fallbacks
    fontFamily: '"Operator Mono", Osaka, monospace',

    // custom css to embed in the main window
    css: `
      .hyperterm_main { border-width: 0; }
    `,

    hyperTabs: {
      activityColor: 'salmon',
      border: false,
      tabIcons: true,
      tabIconsColored: true,
      trafficButtons: true,
    },

    hyperline: {
      background: 'transparent',
    },
  },

  // a list of plugins to fetch and install from npm
  // format: [@org/]project[#version]
  // examples:
  //   `hypersolar`
  //   `@company/project`
  //   `project#1.0.1`
  plugins: [
    'hyper-blink',
    'hyper-snazzy',
    'hypercwd',
    'hyperterm-paste',
    'hyper-tabs-enhanced',
    "hyperline",
  ],

  // in development, you can create a directory under
  // `~/.hyperterm_plugins/local/` and include it here
  // to load it and avoid it being `npm install`ed
  localPlugins: []
};