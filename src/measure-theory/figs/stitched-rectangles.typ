#import "../../colors.typ":*
#import "@preview/cetz:0.2.2"

#cetz.canvas(length: 3cm, {
    import cetz.draw: *

    grid((-.8, -.8), (+.8, +.8), step: 0.1, stroke: darkgray2 + 0.1pt)
    line((-.8, +0), (+.8, +0), fill:orange, stroke: 1pt + orange, mark: (end: "stealth", scale:.5))
    line((+0, -.8), (+0, +.8), fill:orange, stroke: 1pt + orange, mark: (end: "stealth", scale:.5))
    rect((-.2 , -.2) , (+.4 , +.2) , stroke: (dash:"dashed", paint:turquoise) , fill:turquoise.transparentize(70%))
    rect((+.4 , -.2) , (+.7 , +.2) , stroke: (dash:"dashed", paint:red)  , fill:red.transparentize(70%))

    // lines to cover dashes
    line((-.2,-.2), (-.2,+.2), stroke: turquoise)
    line((-.2,-.2), (+.4,-.2), stroke: turquoise)
    line((+.4,-.2), (+.4,+.2), stroke: red)
    line((+.4,-.2), (+.7,-.2), stroke: red)

    line((-.20 , -.25) , (+.40 , -.25), name:"b0" , stroke: .5pt + turquoise , fill:turquoise , mark: (end: "stealth" , start:"stealth" , scale:.5))
    line((-.30 , -.20) , (-.30 , +.20), name:"b1" , stroke: .5pt + red , fill:red , mark: (end: "stealth" , start:"stealth" , scale:.5))
    line((+.40 , -.25) , (+.70 , -.25), name:"r0" , stroke: .5pt + red  , fill:red  , mark: (end: "stealth" , start:"stealth" , scale:.5))
    line((-.35 , -.20) , (-.35 , +.20), name:"r1" , stroke: .5pt + turquoise  , fill:turquoise  , mark: (end: "stealth" , start:"stealth" , scale:.5))

    content((-.17,-.30), anchor:"north", text(6pt, fill:turquoise)[$ a_0 $])
    content((+.40,-.30), anchor:"north", text(6pt, fill:gradient.linear(turquoise,red))[$ b_0=a'_0 $])
    content((+.67,-.30), anchor:"north", text(6pt, fill:red)[$ b'_0 $])
    content((-.325,+.27), anchor:"north", text(6pt, fill:gradient.linear(turquoise,red))[$ b_1=b'_1 $])
    content((-.325,-.20), anchor:"north", text(6pt, fill:gradient.linear(turquoise,red))[$ a_1=a'_1 $])
})
