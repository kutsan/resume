#import "theme/mod.typ" as theme
#import "theme/mod.typ": page-styles
#import "data/personal.typ": personal
#import "components/mod.typ": resume-header, resume-footer

#set page(
  paper: "a4",
  margin: (x: 1.6cm, y: 2.2cm),
  footer: resume-footer(personal),
)

#set document(
  title: personal.first-name + " " + personal.last-name + " — Resume",
  author: personal.first-name + " " + personal.last-name,
  keywords: ("resume", "senior software developer", "fullstack developer", "frontend developer", "web development", "mobile development"),
  date: datetime.today(),
)

#show: page-styles

#resume-header(personal)

#include "sections/mod.typ"
