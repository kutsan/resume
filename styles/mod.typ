#import "spacings.typ": spacing
#import "colors.typ": colors
#import "fonts.typ": font-families, font-leadings, font-sizes
#import "strokes.typ": strokes
#import "layout.typ": layout-page, layout-tokens

#let styles = (
  colors: colors,
  fonts: (
    families: font-families,
    sizes: font-sizes,
    leadings: font-leadings,
  ),
  layout: layout-tokens + (page: layout-page),
  spacing: spacing,
  strokes: strokes,
)
