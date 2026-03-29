#import "../styles/mod.typ": styles

#let tag-list-styles = (
  padding: (
    x: styles.spacing.tag-padding-x,
    y: styles.spacing.tag-padding-y,
  ),
  radius: styles.spacing.tag-radius,
  gap: styles.spacing.tag-gap,
  leading: styles.spacing.tag-leading,
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
