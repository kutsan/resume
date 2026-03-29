#import "@preview/fontawesome:0.6.0": (
  fa-envelope, fa-github, fa-linkedin, fa-phone,
)

#import "../styles/mod.typ": styles

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

      let contact-item(icon: none, url: none, label: none) = {
        icon(size: styles.fonts.sizes.icon)
        [ ]
        link(url, label)
      }

      let items = (
        (
          icon: fa-phone,
          url: "tel:" + author.phone-number,
          label: author.phone-number,
        ),
        (
          icon: fa-envelope,
          url: "mailto:" + author.email,
          label: author.email,
        ),
        (
          icon: fa-linkedin,
          url: author.social-accounts.linkedin.url,
          label: author.social-accounts.linkedin.label,
        ),
        (
          icon: fa-github,
          url: author.social-accounts.github.url,
          label: author.social-accounts.github.label,
        ),
      )

      items.map(item => contact-item(..item)).join(linebreak())
    }),
  )
}
