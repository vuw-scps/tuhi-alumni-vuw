

// #let name = "Joe Poata"
// #let education = "BSc (Hons) Physics"
// #let job = "PhD candidate"
// #let employer = "VUW"
// #let quote = text[There’s a great sense of collegiality in the Physics department. You get to know the lecturers and your fellow students really well.

// It’s very satisfying to have a problem in front of you and to be able to solve it just using equations. Having a mathematical answer to something that occurs in nature is really cool.]
// #let photo = "images/joe.png"

// #import "template.typ": crop-marks, page-foreground, paper-height, paper-width, page-width, page-height, bleed, trim

// #let darkgrey = rgb(29, 27, 28)
// #let darkgreen = rgb(0,81,55)
// #let middlegreen = rgb(113, 135, 121)
// #let lightgreen = rgb(206,220,215)
// #let debug = false

// // #set page(fill: darkgreen, height: 3in, width:6in, margin: 0pt)

// #let page-background(fill: (lightgreen,darkgreen,), split:2cm, line-width: 2pt) = {
//  place(top+left, dx:trim - bleed,dy:trim - bleed, rect(fill: fill.at(0),width: page-width, height: split))
//   place(bottom+left, dx:trim - bleed,dy:-trim + bleed, rect(fill: fill.at(1),width: page-width, height: page-height - split))
//   place(top+left, dy: split + trim - bleed, line(stroke: white + line-width, length: 100%))
//     place(top+left, dy: trim - bleed,dx:1.5cm, image("images/braid.svg",height: page-height))
// }

// #let logo-position = (3.5cm, 2.85cm)
// #let name-position = (10.2cm, 2.6cm)
// #let title-position = (10.2cm, 5.8cm)
// #let previously-position = (10.2cm, 8.4cm)
// #let line-position =  4.2cm
// #let line-width= 2pt
// #let logo-radius = 2.6cm

// #set page(width: paper-width, height:paper-height, margin:0pt,
// background: page-background(split: line-position , line-width: line-width), foreground: page-foreground)

// #set text(font: "Source Sans Pro", size: 24pt)

// #place(top+left, dx:logo-position.at(0), dy:logo-position.at(1), box(width:2*logo-radius, height:2*logo-radius, clip: true, radius: logo-radius)[#image(photo, height: 2*logo-radius)])

// #place(top+left, dx:logo-position.at(0), dy:logo-position.at(1), circle(stroke: white + line-width,radius: logo-radius))

// #place(top+left, dx:name-position.at(0), dy:name-position.at(1), text(size:24pt, weight: "bold")[#name])
// #place(top+left, dx:name-position.at(0), dy:name-position.at(1)+12mm, text(size:22pt)[#education])

// #set text(fill: white)
// #set par(leading: 12pt)
// #place(top+left, dx:title-position.at(0), dy:title-position.at(1), {
//   smallcaps(lower(text(size:26pt, weight: "bold", tracking: 1.5pt)[#job]))
//   v(1em,weak: true)
// text(size:22pt)[#employer]
// }
// )

// #pagebreak()


// #set page(width: paper-width, height:paper-height, margin:0pt,
// background: page-background(split: page-height , line-width: line-width), foreground: page-foreground)

// #let quote-position = (5cm, 3cm)
// // #let quote-position = (5cm, 2.5cm)

// #place(top+left, dx:quote-position.at(0)-2.2em, dy:quote-position.at(1)-0.2em, text(size:82pt, weight: 400,fill: rgb("FDF150"), font: "STIX Two Text")["])

// #place(top+left, dx:quote-position.at(0), dy:quote-position.at(1), box(width: page-width - quote-position.at(0) - 1.8cm)[#text(size:15pt, weight: 400,fill: darkgreen)[#quote]])


// #let original = read("images/VUW-black.svg")

// #let green-replace = original.replace(
//   "black", // white
//   darkgreen.to-hex(),
// )
// #let logo-green = image.decode(green-replace, width: 4cm)


// #place(bottom + left, dx:16.9cm,dy:-1.9cm)[#logo-green]

// // #place(bottom + center, dx:0cm,dy:-1.9cm)[#logo-green]