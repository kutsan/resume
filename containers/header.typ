#import "../styles/mod.typ": colors, sizes
#import "@preview/fontawesome:0.6.0": (
  fa-envelope, fa-github, fa-linkedin, fa-phone,
)

#let header(
  author: (
    first-name: "",
    last-name: "",
    title: "",
    email: "",
    phone-number: "",
    social-accounts: (:),
  ),
) = {
  grid(
    columns: (1fr, auto),
    column-gutter: sizes.layout.column-gutter,

    grid(
      row-gutter: sizes.layout.header-name-gap,
      text(size: sizes.font.title, {
        text(fill: colors.content-primary, author.first-name)
        [ ]
        text(fill: colors.content-secondary, author.last-name)
      }),
      text(
        size: sizes.font.heading,
        fill: colors.content-secondary,
        style: "italic",
        author.title,
      ),
    ),

    align(right + horizon, {
      show link: set text(fill: colors.content-secondary)
      set text(size: sizes.font.subtitle, fill: colors.content-secondary)

      fa-phone(size: 0.85em)
      [ ]
      link("tel:" + author.phone-number, author.phone-number)
      linebreak()

      fa-envelope(size: 0.85em)
      [ ]
      link("mailto:" + author.email, author.email)
      linebreak()

      fa-linkedin(size: 0.85em)
      [ ]
      link(
        author.social-accounts.linkedin.url,
        author.social-accounts.linkedin.label,
      )
      linebreak()

      fa-github(size: 0.85em)
      [ ]
      link(
        author.social-accounts.github.url,
        author.social-accounts.github.label,
      )
    }),
  )
}
