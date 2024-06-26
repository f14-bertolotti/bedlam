#import "colors.typ": *
#import "@preview/ctheorems:1.1.2": *

#let template(doc) = [
    #show: thmrules

    #set page(
        paper : "us-letter",
        fill  : page_color
    )

    #set heading(numbering: "1.")    
    #show heading.where(level: 2): it => [#text(heading_color)[#block(text(size:20pt)[#it])]]
    #show heading.where(level: 1): it => [#text(size:30pt)[#align(right)[#pagebreak() #it #line(length:100%, stroke:line_color)]]]
    #show strong: set text(bold_color)
    #show link: it => {text(link_color)[#it]}

    #set text(fill:text_color, size:12pt)
    #set par(justify:true)
    
    #pagebreak()
    #outline()
    #pagebreak()

    #doc
]


#let definition = thmbox("definition", "Definition", inset: (x: .2em, top: 1em), bodyfmt: x => {text()[\ #x]})
#let comment(body) = {text(fill:comment_color)[#body]}
