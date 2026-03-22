#import "../theme/mod.typ" as theme
#import "@preview/fontawesome:0.6.0": fa-phone, fa-envelope, fa-github, fa-linkedin

#let resume-header(personal) = {
  grid(
    columns: (1fr, auto),
    column-gutter: 1em,
    {
      {
        text(size: 34pt, weight: "regular", fill: theme.darktext, personal.first-name)
        text(size: 34pt, [ ])
        text(size: 34pt, weight: "bold", fill: theme.mediumtext, personal.last-name)
      }
      linebreak()
      v(-0.2em)
      text(size: 1.25em, weight: "regular", fill: theme.mediumtext, style: "italic", personal.title)
    },
    align(right + horizon, text(size: 0.9em, weight: "regular", fill: theme.mediumtext, {
      show link: set text(fill: theme.mediumtext)
      fa-phone(size: 0.85em)
      h(4pt)
      personal.phone
      linebreak()
      fa-envelope(size: 0.85em)
      h(4pt)
      link("mailto:" + personal.email, personal.email)
      linebreak()
      fa-linkedin(size: 0.85em)
      h(4pt)
      link(personal.linkedin.url, personal.linkedin.label)
      linebreak()
      fa-github(size: 0.85em)
      h(4pt)
      link(personal.github.url, personal.github.label)
    })),
  )
}
