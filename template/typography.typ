#import "../styles/mod.typ": colors, fonts, sizes

#let typography-styles(body) = {
  set text(
    font: fonts.primary,
    fill: colors.content-primary,
  )

  show heading.where(level: 1): it => {
    set block(
      above: sizes.layout.heading-spacing.above,
      below: sizes.layout.heading-spacing.below,
    )

    grid(
      columns: (sizes.layout.hints-width, 1fr),
      column-gutter: sizes.layout.column-gutter,

      align(
        horizon,
        rect(
          width: 100%,
          height: sizes.layout.heading-rule-height,
          fill: colors.content-primary,
        ),
      ),
      text(
        size: sizes.font.heading,
        fill: colors.primary,
        it.body,
      ),
    )
  }

  set par(
    leading: sizes.font.leading.body,
  )

  // Faux bold for strong text.
  show strong: set text(
    stroke: sizes.font.faux-bold-stroke + colors.content-primary,
  )

  show link: set text(fill: colors.primary)

  set list(
    marker: text(fill: colors.primary, "▪"),
    indent: sizes.layout.list-indent,
    body-indent: sizes.layout.list-indent,
  )

  body
}
