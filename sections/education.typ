#import "../theme/mod.typ" as theme
#import "../components/mod.typ": section-heading, education-entry

#section-heading("Education")

#stack(dir: ttb, spacing: theme.education-entry-gap,
  education-entry("Polinas Technical Anatolian High School", "Information Technologies", "2011", "2015"),
)
