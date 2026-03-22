#import "tokens.typ" as theme

#let page-styles(body) = {
  set text(
    font: "iA Writer Quattro S",
    size: 11pt,
    weight: "regular",
    fill: theme.darktext,
  )

  set par(leading: 0.75em)

  show strong: set text(stroke: 0.35pt + theme.darktext)

  set heading(numbering: none)
  show heading.where(level: 2): it => {
    set text(size: 0pt)
    it.body
  }
  show heading.where(level: 1): it => {
    set block(above: 0pt, below: 0pt)
    grid(
      columns: (theme.hints-column-width, 1fr),
      column-gutter: theme.column-gutter,
      align(right + horizon,
        rect(width: 100%, height: 0.3em, fill: black, stroke: none),
      ),
      text(size: 14.3pt, weight: "regular", fill: theme.accent, it.body),
    )
  }

  show link: set text(fill: theme.accent)

  set list(
    marker: text(fill: theme.accent, "•"),
    indent: 0.5em,
    body-indent: 0.5em,
    spacing: theme.bullet-spacing,
  )

  body
}
