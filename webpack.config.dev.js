const path = require('path');
const CopyWebpackPlugin = require('copy-webpack-plugin');

module.exports = {
  entry: {
    app: [
        './src/index.js',
    ]
  },

  mode: 'production',

  output: {
    path: path.resolve(__dirname + '/dist'),
    filename: '[name].js',
    publicPath: '/',
  },

  plugins: [
    new CopyWebpackPlugin({
      patterns: [
          {from: './src/assets', to: './'},
      ]
    }),
  ],

  module: {
    rules: [
      {
        test: /\.html$/,
        exclude: /node_modules/,
        loader: 'file-loader?name=[name].[ext]',
      },
      {
        test: /\.elm$/,
        exclude: [/elm-stuff/, /node_modules/],
        use: [
          {
            loader: 'elm-webpack-loader',
            options: {
              debug: false,
              optimize: false,
              verbose: true,
            },
          },
        ],
      },
      {
        test: /\.(png|jpg|gif|svg|ico|ttf|eot)$/,
        loader: 'file-loader',
        options: {
          name: '[name].[hash:8].[ext]',
        },
      },
    ],

    noParse: /\.elm$/,
  },

  devServer: {
    // Redirect 404s to index.html
    historyApiFallback: true,
    inline: true,
    stats: { colors: true },
  },

};
