#import "../theme/mod.typ" as theme

#let resume-footer(personal) = context {
  let current = counter(page).get().first()
  let total = counter(page).final().first()
  align(right,
    text(size: 0.8em, fill: theme.lighttext,
      str(current) + " / " + str(total),
    ),
  )
}
