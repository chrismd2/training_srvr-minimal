After having followed the AddTailwindCSS.md, discovered it was a challenge to use SASS

Followed the instructions from: https://dev.to/oliverandrich/learn-elixir-and-phoenix-add-tailwind-css-to-the-project-4fkf

cd assets
npm uninstall sass-loader node-sass

update tailwind.config.js purge with the following:

 purge: [
    "../**/*.html.eex",
    "../**/*.html.leex",
    "../**/views/**/*.ex",
    "../**/live/**/*.ex",
    "./js/**/*.js",
  ],


  Rename assets/css/app.scss to assets/css/app.css

  change the import of the CSS file in assets/js/app.js
  from:
  import "../css/app.scss"
  to:
  import "../css/app.css";

  in webpack.config.js
  remove sass-loader so you have

            test: /\.[s]?css$/,
          use: [
            MiniCssExtractPlugin.loader,
            'css-loader',
            'postcss-loader'
          ],

in assets/package.json  set the NODE_ENV environment variable for production builds.

"deploy": "NODE_ENV=production webpack --mode production"