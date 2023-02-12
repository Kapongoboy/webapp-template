/** @type {import('tailwindcss').config} */
module.exports = {
  content: [
    "./app/**/*.{js,ts,jsx,tsx}",
    "./pages/**/*.{js,ts,jsx,tsx}",
    "./components/**/*.{js,ts,jsx,tsx}",
    "./src/**/*.{js,ts,jsx,tsx}",
  ],
  theme: {
    extend: {},
  },
  plugins: [require("daisyui")],
  daisyui: {
    // you can change the theme to suit your preferred defaults
    // check the documentation here to create your own theme https://daisyui.com/theme-generator/
    themes: ["cupcake", "luxury", "retro"],
  },
}
