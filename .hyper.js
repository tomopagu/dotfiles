module.exports = {
  config: {
    // default font size in pixels for all tabs
    fontSize: 14,

    // font family with optional fallbacks
    fontFamily: '"Operator Mono", Hack, "Fira Code", Menlo, "DejaVu Sans Mono", "Lucida Console", monospace',

    // terminal cursor background color (hex)
    // cursorColor: '#F81CE5',
    cursorColor: 'salmon',

    // color of the text
    foregroundColor: '#fff',

    // terminal background color
    backgroundColor: '#000',

    // border color (window, tabs)
    borderColor: '#333',

    // custom css to embed in the main window
    css: '.hyperterm_main { border-width: 0; }',

    // custom padding (css format, i.e.: `top right bottom left`)
    termCSS: '',

    // custom padding
    padding: '12px 14px',

    // some color overrides. see http://bit.ly/29k1iU2 for
    // the full list
    colors: [
      '#000000',
      '#ff0000',
      '#33ff00',
      '#ffff00',
      '#0066ff',
      '#cc00ff',
      '#00ffff',
      '#d0d0d0',
      '#808080',
      '#ff0000',
      '#33ff00',
      '#ffff00',
      '#0066ff',
      '#cc00ff',
      '#00ffff',
      '#ffffff'
    ],

    hyperTabs: {
      activityColor: 'salmon',
      border: false,
      tabIcons: true,
      tabIconsColored: true,
      trafficButtons: true,
    },

    hyperline: {
      background: 'black',
    },

    pokemon: 'pikachu', // Define your favorite pokemon theme!
    pokemonSyntax: 'dark', // Define the 色 of the terminal tabs.
    unibody: 'true', // Define the 色 of the Hyper window header
  },

  // a list of plugins to fetch and install from npm
  // format: [@org/]project[#version]
  // examples:
  //   `hypersolar`
  //   `@company/project`
  //   `project#1.0.1`
  plugins: [
    'hyper-blink',
    'hyper-pokemon',
    'hypercwd',
    'hyperterm-paste',
    'hyper-tabs-enhanced',
    'hyperline'
  ],

  // in development, you can create a directory under
  // `~/.hyperterm_plugins/local/` and include it here
  // to load it and avoid it being `npm install`ed
  localPlugins: []
};