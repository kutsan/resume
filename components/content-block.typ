#import "../styles/mod.typ": styles

#let content-block(aside: none, body) = {
  grid(
    columns: (styles.layout.hints-width, 1fr),
    column-gutter: styles.layout.column-gutter,

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
