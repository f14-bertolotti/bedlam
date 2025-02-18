#import "colors.typ": *
#import "@preview/ctheorems:1.1.2": *


#let template(doc) = [
    #show: thmrules
    #set page(
        paper : "us-letter",
        fill  : page_color,
        margin: (
            top    : 3cm,
            bottom : 3cm,
            left   : 3cm,
            right  : 3cm
        )
    )
 
    #set text(fill:text_color, size:9pt)
    #set par(justify:true)

    #align(center)[#text(size:64pt)[#smallcaps("bedlam")]]

    #set page(
        numbering: "1",
        header : [#smallcaps("bedlam")]
    )

    #set heading(numbering: "1.")    
    #show heading.where(level: 2): it => [#pagebreak() #text(heading_color)[#block(text(size:20pt)[#smallcaps(it)])]]
    #show heading.where(level: 1): it => [#pagebreak() #text(size:30pt)[#align(right)[#smallcaps(it)]] #line(length:100%, stroke:line_color)]
    #show strong: set text(bold_color)
    #show link: it => {text(style:"italic")[#it]}

    
    #pagebreak()
    #hide[aa]

    #outline(indent:auto)
    
    #pagebreak()
    #hide[aa]

    #doc
]


#let definition  = thmbox("definition"  , "Definition"  , breakable:false, inset: (x: .2em, top: 1em), bodyfmt: x => {text()[\ #x]}, titlefmt: x => {text(weight:"bold",fill:definition_color)[#x]})
#let example     = thmbox("example"     , "Example"     , breakable:true , inset: (x: .2em, top: 1em), bodyfmt: x => {text()[\ #x]}, titlefmt: x => {text(weight:"bold",fill:example_color)[#x]})
#let proposition = thmbox("proposition" , "Proposition" , breakable:true , inset: (x: .2em, top: 1em), bodyfmt: x => {text()[\ #x]}, titlefmt: x => {text(weight:"bold",fill:proposition_color)[#x]})
#let theorem     = thmbox("theorem"     , "Theorem"     , breakable:false, inset: (x: .2em, top: 1em), bodyfmt: x => {text()[\ #x]}, titlefmt: x => {text(weight:"bold",fill:theorem_color)[#x]})
#let lemma       = thmbox("lemma"       , "Lemma"       , breakable:false, inset: (x: .2em, top: 1em), bodyfmt: x => {text()[\ #x]}, titlefmt: x => {text(weight:"bold",fill:lemma_color)[#x]})
#let proof       = thmbox("proof"       , "Proof"       , breakable:true , inset: (x: .2em, top: 1em), bodyfmt: x => {text()[\ #x #h(1fr) $square.filled$ ]}, titlefmt: x => {text(weight:"bold",fill:proof_color)[#x]})
#let comment(body) = {text(fill:comment_color)[#body]}
