#import "../styles/mod.typ": styles

#let document-setup(
  author: (
    first-name: "",
    last-name: "",
  ),
  keywords: (),
  body,
) = {
  set document(
    title: author.first-name + " " + author.last-name + " " + styles.symbols.em-dash + " Resume",
    author: author.first-name + " " + author.last-name,
    keywords: keywords,
  )

  body
}
