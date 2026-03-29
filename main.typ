#import "template/mod.typ": template

#show: template.with(
  author: (
    first-name: "Kutsan",
    last-name: "Kaplan",
    title: "Senior Software Developer",
    email: "me@kutsan.dev",
    phone-number: "[redacted]",
    social-accounts: (
      github: (
        label: "github.com/kutsan",
        url: "https://github.com/kutsan",
      ),
      linkedin: (
        label: "linkedin.com/in/kutsan",
        url: "https://linkedin.com/in/kutsan",
      ),
    ),
  ),
  keywords: (
    "resume",
    "senior software developer",
    "fullstack developer",
    "frontend developer",
    "web development",
    "mobile development",
  ),
)

#include "sections/mod.typ"
