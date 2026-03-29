#import "sizes.typ": primitive-sizes
#import "colors.typ": colors
#import "fonts.typ": font-families, font-leadings, font-sizes
#import "strokes.typ": strokes
#import "symbols.typ": symbols
#import "layout.typ": layout-page-sizes, layout-sizes

#let styles = (
  colors: colors,
  fonts: (
    families: font-families,
    sizes: font-sizes,
    leadings: font-leadings,
  ),
  layout: (
    sizes: layout-sizes,
    page-sizes: layout-page-sizes,
  ),
  primitive-sizes: primitive-sizes,
  strokes: strokes,
  symbols: symbols,
)
