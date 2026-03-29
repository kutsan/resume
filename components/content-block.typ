#import "../styles/mod.typ": colors, sizes

#let content-block(aside: none, body) = {
  grid(
    columns: (sizes.layout.hints-width, 1fr),
    column-gutter: sizes.layout.column-gutter,

    if aside != none {
      align(
        right,
        text(
          size: sizes.font.aside,
          fill: colors.content-tertiary,
          aside,
        ),
      )
    },
    body,
  )
}
