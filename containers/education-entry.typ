#import "../styles/mod.typ": styles
#import "../utils/constants.typ": symbols
#import "../components/mod.typ": content-block

#let format-year(date) = {
  str(date.year())
}

#let education-entry(
  school-name: none,
  department-name: none,
  start-date: none,
  end-date: none,
) = {
  content-block[
    #block(breakable: false)[
      #grid(
        columns: (1fr, auto),
        column-gutter: styles.layout.column-gutter,
        row-gutter: styles.layout.block-spacing.sm,

        strong(school-name),

        text(
          size: styles.fonts.sizes.aside,
          fill: styles.colors.content.tertiary,

          format-year(start-date)
            + " "
            + symbols.en-dash
            + " "
            + format-year(end-date),
        ),

        text(
          size: styles.fonts.sizes.subtitle,
          fill: styles.colors.content.secondary,

          department-name,
        ),
      )]
  ]
}
