#import "../styles/mod.typ": colors, sizes
#import "../components/mod.typ": content-block

#let education-entry(
  school-name: none,
  department-name: none,
  start-year: none,
  end-year: none,
) = {
  content-block[
    #block(breakable: false)[
      #grid(
        columns: (1fr, auto),
        column-gutter: sizes.layout.column-gutter,
        row-gutter: sizes.layout.block-spacing.compact,

        strong(school-name),
        text(
          size: sizes.font.aside,
          fill: colors.content-tertiary,
          start-year + " – " + end-year,
        ),

        text(
          size: sizes.font.subtitle,
          fill: colors.content-secondary,
          department-name,
        ),
      )]
  ]
}
