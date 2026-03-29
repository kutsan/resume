#import "../styles/mod.typ": styles

#let page-setup(body) = {
  set page(
    paper: "a4",
    margin: styles.layout.page.margin,
    number-align: right + bottom,
    numbering: (current, total) => text(
      size: styles.fonts.sizes.footer,
      fill: styles.colors.content.tertiary,
      [#current / #total],
    ),
  )

  set block(spacing: styles.layout.block-spacing.lg)

  body
}
