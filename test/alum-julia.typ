

// #let darkgrey = rgb(29, 27, 28)
// #let darkgreen = rgb(0,81,55)
// #let middlegreen = rgb(113, 135, 121)
// #let lightgreen = rgb(206,220,215)
// #let vuw-yellow = rgb("FDF150")
// #let debug = false

// // #set page(fill: darkgreen, height: 3in, width:6in, margin: 0pt)


// // #let logo-original = read("images/VUW-black.svg")
// // #let green-replace = logo-original.replace(
// //   "black", // white
// //   darkgreen.to-hex(),
// // )

// // #let logo-green = image.decode(green-replace, width: 4cm)

// #let braid-original = read("images/braid2.svg")
// #let green-replace = braid-original.replace(
//   "black", // white
//   middlegreen.to-hex(),
// )

// #let braid-green = image.decode(green-replace, width: 19pt)


// #let pat = pattern(size: (19pt, 56pt))[
//   #place(braid-green)
// ]


// #let page-background(fill: (lightgreen,darkgreen,), split:2cm, line-width: 2pt) = {
//  place(top+left, dx:trim - bleed,dy:trim - bleed, rect(fill: fill.at(0),width: page-width, height: split))
//   place(bottom+left, dx:trim - bleed,dy:-trim + bleed, rect(fill: fill.at(1),width: page-width, height: page-height - split))
//   place(top+left, dy: split + trim - bleed, line(stroke: white + line-width, length: 100%))
//     // place(top+left, dy: trim - bleed,dx:1.5cm, rect(fill: pat, width: 19pt, height: page-height))
    
// }

// #let show-original = 100%
// // #let show-original = 40%
// #let show-original = 0%


// #let logo-position = (6.6cm, 1.8cm)
// #let name-position = (8.6cm, 11.2cm)
// #let title-position = (8.6cm, 11cm)
// #let previously-position = (8.6cm, 11cm)
// #let quote-position = (8.6cm, 16.8cm)
// #let line-position =  4.2cm
// #let line-width= 2pt
// #let logo-radius = 3.8cm
// #let breather = 5mm
// #let font-size = 18pt
// #let graduate-profile = (22mm, logo-position.at(1) + 2*logo-radius - trim + bleed + 25mm)

// #set page(width: paper-width, height:paper-height, margin:0pt,
// background: page-background(split: page-height , line-width: line-width), foreground: page-foreground)
// // 
// #set text(font: "Source Sans Pro", size: font-size)

// // green rect
// #place(top+left, dx:trim - bleed, dy:trim - bleed, rect(fill: darkgreen,width: graduate-profile.at(0), height: graduate-profile.at(1)))

// #place(top+left, dx:trim - bleed + 0.6cm, dy:trim - bleed + 1.3cm, rotate(-90deg,origin: top + left, reflow: true)[#smallcaps(text(fill:white,size:font-size*1.7,weight: 300, tracking: 1pt)[graduate profile])])

// // white rect
// #place(top+left, dx:title-position.at(0) - 18mm, dy:title-position.at(1)- breather, rect(fill: white.transparentize(50%),width: page-width - title-position.at(0) + trim + 18mm, height: 3.85cm + breather))
// // yellow line
// #place(top+left, dx:title-position.at(0) - 18mm, dy:title-position.at(1)- breather, rect(fill: vuw-yellow.transparentize(10%),width: 1mm, height: 3.85cm + breather))
  
// // profile picture
// #place(top+left, dx:logo-position.at(0), dy:logo-position.at(1), box(width:2*logo-radius, height:2*logo-radius, clip: true, radius: logo-radius)[#image("images/julia.png", height: 2*logo-radius)])

// // picture border
// #place(top+left, dx:logo-position.at(0), dy:logo-position.at(1), circle(stroke: darkgreen + line-width,radius: logo-radius))

// #set text(fill: black)
// #set par(leading: 12pt)

// #place(top+left, dx:name-position.at(0), dy:name-position.at(1), {
//   text(size:1.2*font-size, weight: 600, fill:darkgreen)[Julia Rothman]
//     v(0.6em,weak: true)
//   text(size:0.9*font-size, weight: 400)[BSc (Hons) in Physics ]
//     v(0.8em,weak: true)
//   text(size:font-size, weight: 600, tracking: 1.1pt, fill:darkgreen)[#smallcaps(lower("director of launch Complex 1"))\ #text(size:0.9*font-size,tracking: 0pt, weight: 400, fill:black)[ Rocket Lab]]
// }
// )


// // #let quote-position = (5cm, 2.5cm)

// #let myfont = "Permanent Marker"
// #let myfont = "Liberation Mono"

// #place(top+left, dx:quote-position.at(0)-25mm, dy:quote-position.at(1)-0em, [#text(size:92pt, weight: 400,fill: vuw-yellow.transparentize(10%), font: myfont)["]])
// // #place(top+left, dx:quote-position.at(0)-23mm, dy:quote-position.at(1) + 1.5em, rect(fill: darkgreen.transparentize(50%), height: 2pt, width: 1.2cm))

// #place(top+left, dx:quote-position.at(0), dy:quote-position.at(1), box(width: page-width - quote-position.at(0) - 1.35cm)[#text(size:0.9*font-size, weight: 400,fill: black)[If you’ve always dreamed about a career in space, don’t give up. It’s not just for those who are starting their career; it’s also mid-career professionals as well. There are a surprising number of opportunities and mentorships that are being offered through many different groups established in New Zealand, and there’s a lot of space industry professionals looking to encourage and mentor the next generation.]])



// // #place(bottom + left, dx:14.9cm,dy:-1.9cm)[#logo-green]

// // #place(bottom + center, dx:0cm,dy:-1.9cm)[#logo-green]

// #import "@preview/grayness:0.1.0": transparent-image

// #let data = read("phys2_s.png", encoding: none)

// #transparent-image(data, alpha: show-original, width: 100%)



// // #let original = image.decode(read("phys2_s.png", encoding: none))
// // #original.transparentize(50%)
// // ,height:100%
// // #place(original)