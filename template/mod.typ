#import "typography.typ": typography-styles
#import "document.typ": document-setup
#import "page.typ": page-setup
#import "header.typ": header

#let template(
  author: (
    first-name: "",
    last-name: "",
    title: "",
    email: "",
    phone-number: "",
    social-accounts: (:),
  ),
  keywords: (),
  body,
) = {
  show: document-setup.with(
    author: (
      first-name: author.first-name,
      last-name: author.last-name,
    ),
    keywords: keywords,
  )
  show: page-setup
  show: typography-styles

  header(author: author)

  body
}
