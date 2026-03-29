#import "spacings.typ": primitive-block-spacings

#let layout-page = (
  margin: (
    x: 1.6cm,
    y: 2.2cm,
  ),
)

#let layout-tokens = (
  header-name-row-gutter: 1em,
  hints-width: primitive-block-spacings.md,
  column-gutter: 10pt,
  heading-rule-height: 0.25em,
  block-spacing: (
    sm: 1em,
    md: 1.2em,
    lg: 1.5em,
    xl: 1.8em,
  ),
  heading-spacing: (
    base: (
      above: 1.8em,
      below: 1.3em,
    ),
  ),
  list-indent: 0.5em,
)
