#import "@preview/fontawesome:0.5.0": *
#import "data/details_en.typ": *

#set document(
  author: "Erkka Lehtoranta",
  date: datetime.today(),
  keywords: ("Curriculum Vitae", "Resume"),
  title: "Curriculum Vitae")
#set page(
  paper: "us-letter",
  fill: rgb("#F5F5DC"),
  margin: 40pt,
)
#set text(
  font: "Fira Sans",
  size: 11pt,
)
#set par(
  spacing: 10pt,
)
#show link: underline
#set list(
  marker: ">"
)

#show image: it => {
  block(radius: 0.5em, clip: true)[#it]
}

#grid(
  columns: 3,
  column-gutter: 2em,
  row-gutter: 1.5em,
  grid.cell(rowspan: 3, inset: (y: -5pt, x: 1em))[
    #image(
      "assets/images/me_crop.png",
      height: 125pt,
      alt: "Resume profile picture",
    )
  ],
  grid(
    row-gutter: 1em,
    text(
      30pt,
      weight: "black", 
      tracking: 4pt,
      align(left, upper(info.name.replace(" ", "\n")))
    ),
    text(weight: "semibold")[#info.occupation],
    text(weight: "regular")[#info.description],
  ),
  align(right,
    list(
      marker: "",
      link("mailto:"+info.email)[#info.email#h(0.5em)#fa-icon("envelope", size: 1.5em)],
      link(info.github)[#info.github.split("/").at(-1)#h(0.5em)#fa-icon("github", size: 1.5em)],
      link(info.linkedin)[#info.linkedin.split("/").at(-1)#h(0.5em)#fa-icon("linkedin", size: 1.5em)],
    )
  ),
)

#block(
  radius: 0.5em,
  stroke: luma(66.6%),
  grid(
    columns: (50%, 50%),
    rows: (auto, auto),
    stroke: none,
    inset: 20pt,
    [
      = Education
      #for school in education {
        grid(
          columns: (1fr, auto),
          row-gutter: 2pt,
          align: (left, right),
          inset: 3pt,
          text(weight: "medium")[#school.school],
          [#school.start -- #if school.end != none [#school.end] else [ongoing]],
          grid.cell(colspan: 2, text(weight: "medium", style: "italic")[#school.subject]),
          for d in school.description_list [- #d]
        )
      }
    ],
    grid.vline(stroke: luma(66%)),
    [
      = Skills
      #text(size: 11pt, weight: "bold")[Technology]
      #grid(
        columns: (30%, 1fr),
        text(weight: "medium")[#underline[Name]],
        underline[Source]
      )
      #for skill in skills.at("tech") {
        grid(
          columns: (30%, 1fr),
          text(weight: "medium")[#skill.name],
          [#skill.source]
        )
      }
  //    #text(size: 11pt, weight: "bold")[Languages]
  //    #for skill in skills.at("languages") {
  //      grid(
  //        columns: (30%, 1fr),
  //        align: (left, right),
  //        text(weight: "medium")[#skill.name],
  //        [#skill.proficiency]
  //      )
  //    }
    ],
    grid.hline(stroke: luma(66%)),
    [
      = Projects
      #for p in projects [
        #list(
          text(weight: "medium")[
            #link("https://github.com/" + info.github.split("/").at(-1) + "/" + p.name)[#p.name] \
            #text(weight: "regular")[#p.description]
          ],
        )
      ]
    ],
    [
      = Experience
      #v(2pt)
      #for e in experience [
        #text(weight: "medium")[#e.job] | #e.employer \
        #e.from -- #e.to \
        #e.description
        #v(5pt)
      ]
    ]
  )
  
)
