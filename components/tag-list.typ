#import "../styles/mod.typ": colors, sizes

#let tag-list(items) = {
  block(above: sizes.tag.gap, below: 0pt, {
  set par(leading: sizes.tag.leading)

  for item in items {
    box(
      inset: (x: sizes.tag.padding.x, y: sizes.tag.padding.y),
      radius: sizes.tag.radius,
      fill: colors.tertiary,
      text(size: sizes.font.footer, fill: colors.secondary, item),
    )
    h(sizes.tag.gap)
  }
  })
}
