#import "../theme/mod.typ" as theme
#import "../components/mod.typ": section-heading, job-entry, skills

#section-heading("Experience")

#stack(dir: ttb, spacing: theme.job-entry-gap,
  job-entry(
    start: "2024-05-01",
    title: "Fullstack Developer",
    company: "Wavera",
    url: "https://wavera.co",
    location: "Izmir, Turkey",
    employment-type: "Full-time",
    location-type: "Hybrid",
    content: {
      list(
        [Develop web applications with *TypeScript*, *React*, and *Next.js*.],
        [Build scalable mobile apps with *TypeScript*, *React*, *Expo*, and *React Native*.],
        [Architect backend services using *TypeScript*, *Node.js*, and *Fastify*.],
        [Implement server-side tracking systems using *Google Tag Manager*, *Stape*, and *AppsFlyer*.],
      )
      skills(("TypeScript", "React", "Next.js", "React Native", "Expo", "Node.js", "Fastify"))
    },
  ),
  job-entry(
    start: "2021-12-01",
    end: "2024-03-01",
    title: "Frontend Developer",
    company: "HubX",
    url: "https://hubx.co",
    location: "Izmir, Turkey",
    employment-type: "Full-time",
    location-type: "Hybrid",
    content: {
      list(
        [Established frontend standards and best practices across the team, focusing on code quality, scalability, and long-term maintainability.],
        [Built type-safe web applications using *TypeScript*, *React*, *Next.js*, *Redux Toolkit*, *RTK Query*, *Zod*, and *GraphQL* with SSR, SSG, and *Firebase* integration.],
        [Engineered smooth animations and interactive UI elements using *CSS* and *Framer Motion* while maintaining WCAG accessibility guidelines.],
        [Delivered robust product features including *Stripe* payment flows, AI-powered functionality, and headless CMS integrations with *Strapi* and *KeystoneJS*.],
        [Implemented server-side tracking systems using *Google Tag Manager*, *Stape*, and *AppsFlyer*.],
        [Coordinated cross-functional planning and decision-making between product, design, and marketing teams.],
      )
      skills(("TypeScript", "React", "Next.js", "Redux Toolkit", "RTK Query", "GraphQL", "Zod", "Firebase", "Stripe", "Framer Motion"))
    },
  ),
  job-entry(
    start: "2021-03-01",
    end: "2021-12-01",
    title: "Frontend Developer",
    company: "Eduo Technology",
    url: "https://eduo.tech",
    location: "Izmir, Turkey",
    employment-type: "Full-time",
    location-type: "Hybrid",
    content: {
      list(
        [Developed and maintained web applications using *TypeScript*, *React*, *Redux*, and *Next.js* with focus on scalability and maintainability.],
        [Built cross-platform mobile applications with *React Native*, utilizing *React Navigation*, *Firebase*, and *MobX State Tree*.],
        [Delivered responsive websites and landing pages following mobile-first design principles and BEM, DRY, modular component architecture.],
        [Introduced and maintained developer tooling including *ESLint*, *Prettier*, *Stylelint*, *Husky*, and *Commitlint*.],
      )
      skills(("TypeScript", "React", "Next.js", "Redux", "React Native", "Firebase", "MobX State Tree"))
    },
  ),
  job-entry(
    start: "2017-01-01",
    end: "2018-04-01",
    title: "Frontend Developer",
    company: "Freelance",
    location: "Manisa, Turkey",
    location-type: "Remote",
    content: {
      list(
        [Built and delivered commercial landing pages for freelance clients using *React*, *Webpack*, and *Babel.js*.],
        [Optimized responsive design, performance, and maintainability across all deliverables.],
        [Collaborated directly with clients to gather requirements, define project scope, and align development with business goals.],
      )
      skills(("React", "JavaScript", "Webpack", "Babel.js", "CSS"))
    },
  ),
)
