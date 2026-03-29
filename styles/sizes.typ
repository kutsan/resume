#import "primitives/mod.typ": primitives

#let sizes = (
  page: (
    margin: (
      x: 1.6cm,
      y: 2.2cm,
    ),
  ),
  font: (
    title: primitives.sizes.font.xl,
    heading: primitives.sizes.font.lg,
    footer: primitives.sizes.font.xs,
    faux-bold-stroke: primitives.sizes.strokes.thin,
    aside: primitives.sizes.font.sm,
    subtitle: primitives.sizes.font.sm,
    list: primitives.sizes.font.sm,
    leading: (
      body: 0.75em,
    ),
  ),
  layout: (
    hints-width: primitives.sizes.lengths.md,
    column-gutter: primitives.sizes.spacing.md,
    heading-rule-height: 0.25em,
    block-spacing: (
      base: 1.5em,
      compact: 1em,
    ),
    heading-spacing: (
      above: 1.8em,
      below: 1.2em,
    ),
    list-indent: 0.5em,
    entry-spacing: 1.6em,
    header-name-gap: 1em,
  ),
  tag: (
    padding: (
      x: primitives.sizes.spacing.sm,
      y: 3.5pt,
    ),
    radius: 2pt,
    border-width: 0.5pt,
    gap: primitives.sizes.spacing.xs,
    leading: 0.4em,
  ),
)
