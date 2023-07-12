const path = require('path');

module.exports = {
  entry: {
    application: './app/javascript/packs/application.js',
  },
  output: {
    filename: '[name].js',
    path: path.resolve(__dirname, 'public/packs'),
  },
  module: {
    rules: [
      {
        test: /\.scss$/,
        use: ['style-loader', 'css-loader', 'sass-loader'],
      },
    ],
  },
};
