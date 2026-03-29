#import "../styles/mod.typ": styles
#import "../utils/constants.typ": symbols
#import "../components/mod.typ": content-block

#let format-date(date) = {
  date.display("[month repr:short] [year]")
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
  let end-text = if end-date != none {
    format-date(end-date)
  } else {
    "Present"
  }

  let start-text = format-date(start-date)

  let date-aside = {
    end-text
    linebreak()
    start-text
  }

  let company-name-content = if company-website != none {
    link(
      company-website,
      text(
        fill: styles.colors.brand.primary,
        style: "italic",
        company-name,
      ),
    )
  } else {
    text(style: "italic", company-name)
  }

  let meta-parts = (location,)

  if employment-type != none { meta-parts.push(employment-type) }
  if location-type != none { meta-parts.push(location-type) }

  content-block(aside: date-aside)[
    #heading(
      level: 2,
      bookmarked: true,
    )[*#title*, #company-name-content] \
    #text(
      size: styles.fonts.sizes.subtitle,
      fill: styles.colors.content.secondary,
      meta-parts.join(" " + symbols.middle-dot + " "),
    )

    #show strong: set text(
      stroke: styles.strokes.faux-bold-stroke + styles.colors.content.secondary,
    )

    #show list: set text(
      size: styles.fonts.sizes.description,
      fill: styles.colors.content.secondary,
    )

    #body
  ]
}
