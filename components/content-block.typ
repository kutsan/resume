#import "../styles/mod.typ": styles

#let content-block(aside: none, body) = {
  grid(
    columns: (styles.layout.sizes.hints-width, 1fr),
    column-gutter: styles.layout.sizes.column-gutter,

    if aside != none {
      align(
        right,
        text(
          size: styles.fonts.sizes.aside,
          fill: styles.colors.content.tertiary,
          aside,
        ),
      )
    },

    body,
  )
}
