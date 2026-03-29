#import "../styles/mod.typ": styles
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
        column-gutter: styles.layout.sizes.column-gutter,
        row-gutter: styles.layout.sizes.block-spacing.small,

        strong(school-name),

        text(
          size: styles.fonts.sizes.aside,
          fill: styles.colors.content.tertiary,

          format-year(start-date)
            + " "
            + styles.symbols.en-dash
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
