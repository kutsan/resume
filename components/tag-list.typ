#import "../styles/mod.typ": styles

#let tag-list-styles = (
  padding: (
    x: styles.spacing.tag-padding-x,
    y: 3.5pt,
  ),
  radius: 2pt,
  border-width: 0.5pt,
  gap: styles.spacing.tag-gap,
  leading: 0.4em,
)

#let tag-list(items) = {
  block(above: tag-list-styles.gap, below: 0pt, {
    set par(leading: tag-list-styles.leading)

    for item in items {
      box(
        inset: (x: tag-list-styles.padding.x, y: tag-list-styles.padding.y),
        radius: tag-list-styles.radius,
        fill: styles.colors.brand.tertiary,

        text(
          size: styles.fonts.sizes.tag,
          fill: styles.colors.brand.secondary,
          item,
        ),
      )

      h(tag-list-styles.gap)
    }
  })
}
