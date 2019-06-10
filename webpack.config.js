var path = require('path');
var webpack = require('webpack');

module.exports = {
  entry: [
    './app-js/main',
  ],
  output: {
    path: __dirname + '/app/assets/javascripts',
    filename: 'bundle.js'
  },
  module: {
    loaders: [{
        test: /.js?$/,
        loader: 'babel-loader',
        exclude: /node_modules/,
        query: {
          presets: ['es2015']
        }
      }
    ]
  }
};
