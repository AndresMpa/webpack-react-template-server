# React + Webpack template

Quick simple to use, just run the installation script using a terminal, that's it.

```bash
./install.sh
```

If you need a better explanation read the content below

---

## Webpack dependencies

```bash
npm i webpack@latest webpack-cli@latest babel-loader@latest html-webpack-plugin@latest mini-css-extract-plugin@latest
npm i -D webpack-dev-server@latest
```

Some common packages

```bash
npm i -D @babel/core @babel/preset-env
```

Also an useful formatter could be `prettier`

```bash
npm i prettier@latest
```

### Images support

##### Image support (Lossless optimization)

```bash
npm i imagemin-gifsicle imagemin-jpegtran imagemin-optipng imagemin-svgo --save-dev
```

##### Image support (Lossy optimization)

```bash
npm i imagemin-gifsicle imagemin-mozjpeg imagemin-pngquant imagemin-svgo --save-dev
```

### CSS support

##### Sass/Scss (Default)

To use sass or scss, add this configuration to `webpack.config.dev.js` and `webpack.config.prod.js`
and install the following packages

```bash
npm i stylus stylus-loader --save-dev
```

```javascript
rules [
...
{
  test: /\.s[ac]ss$/i,
  use: ["style-loader", "css-loader", "sass-loader"],
},
...
]
```

##### less

To use less, add this configuration to `webpack.config.dev.js` and `webpack.config.prod.js`
and install the following packages

```bash
npm i less less-loader --save-dev
```

```javascript
rules [
...
{
  test: /\.less$/i,
  use: ["style-loader", "css-loader", "less-loader"],
},
...
]
```

##### Stylus

To use stylus, add this configuration to `webpack.config.dev.js` and `webpack.config.prod.js`
and install the following packages

```bash
npm i stylus stylus-loader style-loader stylelint stylelint-stylus --save-dev
```

```javascript
rules [
...
{
  test: /\.css|.styl$/,
  use: [
    {
      loader: MiniCssExtractPlugin.loader,
    },
    'css-loader',
    'stylus-loader',
  ],
}
...
]
```

You will also thank to have a linter, so I recommend to add this to you
package.json

package.json

```json
"script": {
    "style:fix": "npx stylelint '**/*.styl' --fix",
    "style:check": "npx stylelint '**/*.styl'"
}
```

To make it works well, you also need a file called `stylelint.config.js` so
copy-paste this configuration also

stylelint.config.js

```javascript
module.exports = {
  extends: ["stylelint-stylus/standard"],
  rules: {
    "stylus/declaration-colon": "never",
  },
};
```

## React dependencies

```bash
npm i react@latest react-dom@latest
```

React extra common packages

```bash
npm i react-router-dom@latest react-redux@latest redux@latest
```
