/** @type {import('tailwindcss').Config} */
module.exports = {
  content: ["./app/Views/pages/*.php"],
  theme: {
    extend: {
      colors: {
        'prime': '#CFD266',
        'second': '#FB9385',
        'anchor': '#F1F29B',
        'border-gray': '#8692A6',
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