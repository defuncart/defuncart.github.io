/** @type {import('tailwindcss').Config} */
module.exports = {
    content: ['./{lib,web}/**/*.dart'],
    theme: {
        extend: {
            colors: {
                'primary': '#E8337E',
                'text-regular': '#58595b',
                'text-light': '#a7a9ac',
                'white': '#FFFFFF'
            },
        },
    },
    plugins: [],
}