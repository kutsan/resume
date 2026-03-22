#import "../theme/mod.typ" as theme

#let skill-tag(name) = {
  box(
    inset: (x: 6pt, y: 3.5pt),
    radius: 2pt,
    fill: theme.tagbg,
    text(size: 0.75em, fill: theme.tagtext, name),
  )
  h(3pt)
}

#let skills(items) = {
  v(theme.skills-gap)
  set par(leading: 0.4em)
  for item in items {
    skill-tag(item)
  }
}
