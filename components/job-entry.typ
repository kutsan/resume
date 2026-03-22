#import "../theme/mod.typ" as theme

#let month-names = ("Jan", "Feb", "Mar", "Apr", "May", "Jun",
                    "Jul", "Aug", "Sep", "Oct", "Nov", "Dec")

#let format-date(date-str) = {
  let parts = str(date-str).split("-")
  if parts.len() >= 2 {
    month-names.at(int(parts.at(1)) - 1) + " " + parts.at(0)
  } else {
    date-str
  }
}

#let job-entry(
  start: none,
  end: "Present",
  title: none,
  company: none,
  url: none,
  location: none,
  employment-type: none,
  location-type: none,
  content: none,
) = {
  let date-col = align(right, text(size: 0.85em, fill: theme.mediumtext, {
    format-date(end)
    linebreak()
    format-date(start)
  }))

  let company-text = if url != none {
    link(url, text(fill: theme.accent, style: "italic", company))
  } else {
    text(fill: theme.accent, style: "italic", company)
  }

  let meta-parts = ()
  if employment-type != none { meta-parts.push(employment-type) }
  if location-type != none { meta-parts.push(location-type) }

  let metadata = if meta-parts.len() > 0 {
    text(fill: theme.lighttext, meta-parts.join(" · "))
  }

  block(breakable: true, above: 0pt, below: 0pt, {
    grid(
      columns: (theme.hints-column-width, 1fr),
      column-gutter: theme.column-gutter,
      date-col,
      {
        heading(level: 2, outlined: true, bookmarked: true)[#title — #company]
        {
          [*#title*, ]
          company-text
          linebreak()
          text(size: 0.9em, fill: theme.lighttext, {
            let parts = (location,)
            if employment-type != none { parts.push(employment-type) }
            if location-type != none { parts.push(location-type) }
            parts.join(" · ")
          })
        }
        if content != none {
          v(0.3em)
          set text(size: 0.92em, fill: theme.mediumtext)
          set par(leading: 0.85em)
          set list(spacing: 1.2em)
          content
        }
      },
    )
  })
}
