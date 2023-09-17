#!/bin/bash

# Dependencies
npm i axios react react-dom react-router-dom typescript @types/react @types/react-dom @types/webpack

# Webpack
npm i -D webpack@latest webpack-cli@latest html-webpack-plugin@latest mini-css-extract-plugin@latest terser-webpack-plugin webpack-dev-server@latest

# Loaders
npm i -D babel-loader html-loader css-loader ts-loader

# Images support
npm i -D image-minimizer-webpack-plugin imagemin-gifsicle imagemin-jpegtran imagemin-optipng imagemin-svgo

# Babel
npm i -D @babel/core @babel/preset-env @babel/preset-react @babel/plugin-transform-runtime babel-plugin-transform-class-properties babel-eslint

# Utilities
npm i -D prettier eslint eslint-config-airbnb eslint-config-prettier eslint-plugin-import eslint-plugin-jsx-a11y eslint-plugin-prettier eslint-plugin-react
