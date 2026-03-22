#import "../theme/mod.typ" as theme

#let labeled-entry(label: none, content) = {
  grid(
    columns: (theme.hints-column-width, 1fr),
    column-gutter: theme.column-gutter,
    align(right, text(size: 0.85em, fill: theme.mediumtext, label)),
    content,
  )
}
