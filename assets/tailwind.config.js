// See the Tailwind configuration guide for advanced usage
// https://tailwindcss.com/docs/configuration
const defaultTheme = require('tailwindcss/defaultTheme')

module.exports = {
  content: [
    "./js/**/*.js",
    "../lib/og_image_web.ex",
    "../lib/og_image_web/**/*.*ex",
  ],
  theme: {
    extend: {
      fontFamily: {
        sans: ['IBM Plex Sans', ...defaultTheme.fontFamily.sans],
      },
    },
  },
  plugins: [
    require('@tailwindcss/forms'),
    require('@tailwindcss/aspect-ratio'),
    require('@tailwindcss/typography'),
  ],
};
