#import "../styles/mod.typ": colors, sizes

#let page-setup(body) = {
  set page(
    paper: "a4",
    margin: sizes.page.margin,
    number-align: right + bottom,
    numbering: (current, total) => text(
      size: sizes.font.footer,
      fill: colors.content-tertiary,
      [#current / #total],
    ),
  )

  set block(spacing: sizes.layout.block-spacing.base)

  body
}
