#import "../styles/mod.typ": colors, sizes
#import "../components/mod.typ": content-block

#let month-names = (
  "Jan",
  "Feb",
  "Mar",
  "Apr",
  "May",
  "Jun",
  "Jul",
  "Aug",
  "Sep",
  "Oct",
  "Nov",
  "Dec",
)

#let format-date(date-str) = {
  let parts = str(date-str).split("-")
  if parts.len() >= 2 {
    month-names.at(int(parts.at(1)) - 1) + " " + parts.at(0)
  } else {
    date-str
  }
}

#let experience-entry(
  start-date: none,
  end-date: none,
  title: none,
  company-name: none,
  company-website: none,
  location: none,
  employment-type: none,
  location-type: none,
  body,
) = {
  let end-text = if end-date != none { format-date(end-date) } else {
    "Present"
  }
  let date-aside = {
    end-text
    linebreak()
    format-date(start-date)
  }

  let company-text = if company-website != none {
    link(company-website, text(
      fill: colors.primary,
      style: "italic",
      company-name,
    ))
  } else {
    text(style: "italic", company-name)
  }

  let meta-parts = (location,)
  if employment-type != none { meta-parts.push(employment-type) }
  if location-type != none { meta-parts.push(location-type) }

  block(above: sizes.layout.entry-spacing, below: 0pt, {
    content-block(aside: date-aside)[
      #place(hide(heading(
        level: 2,
        outlined: true,
        bookmarked: true,
      )[#title — #company-name]))

      *#title*, #company-text \
      #text(
        size: sizes.font.subtitle,
        fill: colors.content-secondary,
        meta-parts.join(" · "),
      )

      #set par(leading: sizes.font.leading.body)
      #show list: set text(size: sizes.font.list)
      #set list(
        marker: text(fill: colors.primary, "•"),
        spacing: sizes.layout.block-spacing.compact,
      )
      #body
    ]
  })
}
