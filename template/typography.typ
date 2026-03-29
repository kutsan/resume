#import "../styles/mod.typ": styles

#let typography-styles(body) = {
  set text(
    font: styles.fonts.families.content,
    fill: styles.colors.content.primary,
  )

  show heading.where(level: 1): it => {
    set block(
      above: styles.layout.sizes.heading-spacing.base.above,
      below: styles.layout.sizes.heading-spacing.base.below,
    )

    grid(
      columns: (styles.layout.sizes.hints-width, 1fr),
      column-gutter: styles.layout.sizes.column-gutter,

      align(
        horizon,
        rect(
          width: 100%,
          height: styles.layout.sizes.heading-rule-height,
          fill: styles.colors.content.primary,
        ),
      ),
      text(
        size: styles.fonts.sizes.heading,
        fill: styles.colors.brand.primary,
        it.body,
      ),
    )
  }

  show heading.where(level: 2): it => text(
    size: styles.fonts.sizes.subheading,
    it.body,
  )

  set par(
    leading: styles.fonts.leadings.body,
  )

  // Faux bold for strong text.
  show strong: set text(
    stroke: styles.strokes.faux-bold-stroke + styles.colors.content.primary,
  )

  show link: set text(fill: styles.colors.brand.primary)

  set list(
    marker: text(fill: styles.colors.brand.primary, styles.symbols.bullet),
    spacing: styles.layout.sizes.block-spacing.small,
  )

  body
}
