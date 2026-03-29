#import "../styles/mod.typ": styles
#import "../utils/constants.typ": symbols

#let document-setup(
  author: (
    first-name: "",
    last-name: "",
  ),
  keywords: (),
  body,
) = {
  set document(
    title: author.first-name
      + " "
      + author.last-name
      + " "
      + symbols.en-dash
      + " "
      + "Resume",
    author: author.first-name + " " + author.last-name,
    keywords: keywords,
  )

  body
}
