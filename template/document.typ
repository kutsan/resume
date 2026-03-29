#import "../styles/mod.typ": colors

#let document-setup(
  author: (
    first-name: "",
    last-name: "",
  ),
  keywords: (),
  body,
) = {
  set document(
    title: author.first-name + " " + author.last-name + " — Resume",
    author: author.first-name + " " + author.last-name,
    keywords: keywords,
  )

  body
}
