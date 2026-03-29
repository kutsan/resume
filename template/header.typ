#import "@preview/fontawesome:0.6.0": (
  fa-envelope, fa-github, fa-linkedin, fa-phone,
)

#import "../styles/mod.typ": styles

// TODO: Consider moving size values to design system.

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
    column-gutter: styles.layout.column-gutter,

    grid(
      row-gutter: styles.layout.header-name-row-gutter,

      text(size: styles.fonts.sizes.title, {
        text(fill: styles.colors.content.primary, author.first-name)
        [ ]
        text(fill: styles.colors.content.secondary, author.last-name)
      }),
      text(
        size: styles.fonts.sizes.heading,
        fill: styles.colors.content.secondary,
        style: "italic",
        author.title,
      ),
    ),

    align(right + horizon, {
      show link: set text(fill: styles.colors.content.secondary)
      set text(
        size: styles.fonts.sizes.subtitle,
        fill: styles.colors.content.secondary,
      )

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
