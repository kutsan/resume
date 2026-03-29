#let primitive-colors = (
  // Royal Blue
  royal-blue-50: color.hsl(232.5deg, 88.9%, 96.5%),
  royal-blue-100: color.hsl(231.7deg, 90%, 92.2%),
  royal-blue-200: color.hsl(230.1deg, 90.1%, 84.1%),
  royal-blue-300: color.hsl(228.9deg, 90%, 76.5%),
  royal-blue-400: color.hsl(226.6deg, 90.5%, 67.1%),
  royal-blue-500: color.hsl(221deg, 83.3%, 53.1%),
  royal-blue-600: color.hsl(221deg, 75.2%, 42.7%),
  royal-blue-700: color.hsl(220.9deg, 77.2%, 32.7%),
  royal-blue-800: color.hsl(221.3deg, 82.3%, 22.2%),
  royal-blue-900: color.hsl(222.6deg, 88.6%, 13.7%),
  royal-blue-950: color.hsl(224.3deg, 92%, 9.8%),

  // Navy
  navy-50: color.hsl(222deg, 52.6%, 92.5%),
  navy-100: color.hsl(221.1deg, 54.3%, 86.3%),
  navy-200: color.hsl(218.8deg, 55.4%, 71%),
  navy-300: color.hsl(216.6deg, 43.9%, 55.3%),
  navy-400: color.hsl(216.7deg, 36.7%, 38.4%),
  navy-500: color.hsl(216.3deg, 40%, 23.5%),
  navy-600: color.hsl(216.6deg, 42.3%, 19%),
  navy-700: color.hsl(216deg, 44.3%, 15.5%),
  navy-800: color.hsl(216.4deg, 48.3%, 11.4%),
  navy-900: color.hsl(217.1deg, 53.8%, 7.6%),
  navy-950: color.hsl(221.5deg, 68.4%, 3.7%),

  // Gray
  gray-50: color.hsl(220deg, 36.6%, 92%),
  gray-100: color.hsl(217.5deg, 37.2%, 83.1%),
  gray-200: color.hsl(215.5deg, 39.3%, 67.1%),
  gray-300: color.hsl(214.6deg, 23.5%, 49.2%),
  gray-400: color.hsl(214.5deg, 24.4%, 32.2%),
  gray-500: color.hsl(215deg, 27.9%, 16.9%),
  gray-600: color.hsl(214.3deg, 29.6%, 13.9%),
  gray-700: color.hsl(214.7deg, 32.2%, 11.6%),
  gray-800: color.hsl(213.8deg, 34.8%, 9%),
  gray-900: color.hsl(218.2deg, 44%, 4.9%),
  gray-950: color.hsl(217.5deg, 44.4%, 3.5%),

  // Stone
  stone-50: color.hsl(214.3deg, 21.2%, 93.5%),
  stone-100: color.hsl(218.6deg, 21.9%, 87.5%),
  stone-200: color.hsl(216.4deg, 23%, 76.1%),
  stone-300: color.hsl(214.9deg, 23.2%, 63.7%),
  stone-400: color.hsl(215deg, 14.8%, 52.2%),
  stone-500: color.hsl(214.3deg, 13.7%, 40%),
  stone-600: color.hsl(213.9deg, 13.9%, 32.4%),
  stone-700: color.hsl(213.3deg, 14.8%, 23.9%),
  stone-800: color.hsl(214.3deg, 16.3%, 16.9%),
  stone-900: color.hsl(213.3deg, 18.4%, 9.6%),
  stone-950: color.hsl(214.3deg, 24.1%, 5.7%),
)

#let colors = (
  brand: (
    primary: primitive-colors.royal-blue-500,
    secondary: primitive-colors.royal-blue-700,
    tertiary: primitive-colors.royal-blue-50,
  ),
  content: (
    primary: primitive-colors.gray-900,
    secondary: primitive-colors.stone-600,
    tertiary: primitive-colors.stone-500,
  ),
)
