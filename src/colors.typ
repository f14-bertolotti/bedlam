// COLORS 
#let orchid        = color.rgb(200,150,250)
#let darkgray2     = color.rgb(84,84,84)
#let darkgray      = color.rgb(64,64,64)
#let superdarkgray = color.rgb(16,16,16)
#let lightblue     = color.rgb(82, 220, 255)
#let lightgreen    = color.rgb(100, 255, 87)
#let ochre         = color.rgb(204, 119, 34)
#let neonorange    = color.rgb(255, 95, 31)
#let celadon       = color.rgb(175, 225, 175)
#let emerald       = color.rgb(80, 200, 120)
#let turquoise     = color.rgb(64, 224, 208)
#let gold          = color.rgb(196, 180, 84)

// Text colors associations
#let heading_color = white
#let line_color    = 2pt + gradient.linear(superdarkgray, white)
#let page_color    = superdarkgray 
#let text_color    = white
#let bold_color    = orchid
#let link_color    = turquoise
#let comment_color = emerald

// Theorem colors association
#let lemma_color       = orange
#let definition_color  = yellow
#let theorem_color     = turquoise
#let example_color     = lightgreen
#let proof_color       = orchid
#let proposition_color = orange

// better page color, but it slow down the render in okular quite a bit
//#let page_color    = gradient.linear(darkgray, superdarkgray, angle:45deg)
