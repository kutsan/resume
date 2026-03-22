#import "../theme/mod.typ" as theme

#let section-heading(title) = {
  v(theme.section-above)
  heading(level: 1)[#title]
  v(theme.section-title-below)
}
