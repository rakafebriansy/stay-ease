/** @type {import('tailwindcss').Config} */
module.exports = {
  content: ["./app/Views/pages/*.php"],
  theme: {
    extend: {
      colors: {
        'prime': '#CFD266',
        'anchor': '#F1F29B',
      }
    },
    fontFamily: {
      'rubik': 'RubikRegular', 
      'rubik-bold': 'RubikBold', 
      'rubik-semibold': 'RubikSemibold', 
      'just-another-hand': 'JustAnotherHandRegular'
    }
  },
  plugins: [],
}