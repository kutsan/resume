#import "../theme/mod.typ" as theme

#let education-entry(school, department, start, end) = {
  grid(
    columns: (theme.hints-column-width, 1fr, auto),
    column-gutter: theme.column-gutter,
    [],
    {
      [*#school*]
      linebreak()
      text(size: 0.9em, fill: theme.mediumtext, department)
    },
    align(right + top,
      text(size: 0.85em, fill: theme.mediumtext, start + " – " + end),
    ),
  )
}
