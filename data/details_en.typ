// These variables are for your details. Edit accordingly.
#let info = (
  name: "Erkka Lehtoranta",
  occupation: "Computer Science Student",
  description: "...with a serious itch for creating the defining technology of tomorrow.",
  email: "contact@erkka.dev",
  github: "https://github.com/elehtoranta",
  linkedin: "https://www.linkedin.com/in/lehtoranta",
  city: "Tampere",
)

#let education = (
  (
      school: "Tampere University",
      subject: "Computer Science, B.Sc.",
      start: 2022,
      end: none,
      description_list: (
        "Minor in Embedded Systems.",
        "Passion for embedded systems programming, operating systems and web development.",
      )
    ), (
      school: "Hive Helsinki",
      subject: "Software Development",
      start: 2021,
      end: 2023,
      description_list: (
        "Project-based studies in a peer-learning environment.",
        "Gave and received in-person code reviews for every completed project.",
        "Gained proficiency through daily use in tools and technologies such as: C, Unix, Git, GDB, GCC, bash, Valgrind, Vim, and unit testing.",
      )
    ),
  )

#let projects = (
  (
    name: "ft_printf",
    description: "Unix " + `printf` + " clone in C.",
    keywords: (
      "C", "Unix"
    ),
  ), (
    name: "ft_ls",
    description: "Unix " + `ls` + " clone in C.",
    keywords: (
      "C", "Unix", "File system"
    ),
  ), (
    name: "pynq-game",
    description: "A classic alien shooter on a PYNQ ARM board and 8x8 led matrix.",
    keywords: (
      "C", "ARM", "Embedded"
    )
  ),
)

#let skills = (
  "tech": (
    (
    name: "C",
    proficiency: "good",
    source: "Solo and group projects in Hive Helsinki, embedded studies in university.",
    projects: (
      link("https://github.com/elehtoranta/ft_printf/")[printf clone],
      link("https://github.com/elehtoranta/ft_ls")[ls clone],
    )
  ), (
    name: "C++",
    proficiency: "good",
    source: "Main coursework language in university.",
    projects: (),
  ), (
    name: "Python",
    proficiency: "good",
    source: "Programming 1 and self-learning before university.",
    projects: (),
  ), (
    name: "Go",
    proficiency: "fair",
    source: "Self-study for backend programming."
  ), (
    name: "Java",
    proficiency: "fair",
    source: "Coursework in university."
  ), (
    name: "Linux",
    proficiency: "good",
    source: "Daily use, tinkering and development for 5+ years."
  ), (
    name: "Embedded systems",
    proficiency: "beginner",
    source: "Minor in university and self-study."
  ), (
    name: "Webdev",
    proficiency: "fair",
    source: "Slowly progressing hobby projects with Go, React, etc. Self-study."
  ),
),
  "languages": (
    (
      name: "Finnish",
      proficiency: "Excellent (native)",
    ), (
      name: "English",
      proficiency: "Excellent",
    ), (
      name: "Swedish",
      proficiency: "Fair",
    ), (
      name: "German",
      proficiency: "Poor",
    )
  )
)

#let experience = (
  (
    employer: "Freelance",
    job: "Sports Photographer",
    from: 2019,
    to: 2022,
    description: "Photographed athletes in and out of sports events for local newspapers.",
  ), (
    employer: "Various",
    job: "Miscellaneous jobs",
    from: 2010,
    to: "present",
    description: "Various short jobs in retail, postal service, catering, etc."
  )
)
