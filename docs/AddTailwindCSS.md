install tailwind via
https://pragmaticstudio.com/tutorials/adding-tailwind-css-to-phoenix

Using the 1.5 focused directions:

cd assets
npm install tailwindcss postcss-loader --save-dev

Wire up Webpack
In your assets directory, create a PostCSS config file with the following contents:

// postcss.config.js

module.exports = {
  plugins: [
    require('tailwindcss'),
    require('autoprefixer')
  ]
}
Open up your Webpack config file and update your CSS rule to include postcss-loader:

// webpack.config.js

From:
{
  test: /\.[s]?css$/,
  use: [
    MiniCssExtractPlugin.loader,
    'css-loader',
    'sass-loader',
  ]
}

To:

use: [
  MiniCssExtractPlugin.loader,
  'css-loader',
  'sass-loader',
  'postcss-loader'
]


Import Tailwind in your stylesheet
In your app.css file, include the Tailwind directives:

/* assets/css/app.scss */

@tailwind base;

@tailwind components;

@tailwind utilities;

/* also removed @import "./phoenix.css"; */


cd .. and Fire up 

mix phx.server

in lib/liv/page_live.html.leex Replace:
  <h1><%= gettext "Welcome to %{name}!", name: "Phoenix" %></h1>

with: 
  <h1 class="text-orange-500 text-5xl font-bold text-center">Welcome to Phoenix with Tailwind CSS</h1>

You will see the Phoenix colored text and the usual phoenix styling is gone.

### Customizing Tailwind

cd assets
npx tailwindcss init


Follow the guidance in the blog post on where customization should belong 


npm install postcss-import

Moved postcss-import from dependencies to devDependencies
npm install  postcss-preset-env

npm install tailwindcss-dark-mode

Made the package.json match the project associated with article from RemoveSASS.