---
title: "Base Converter"
author: "neopanda"
highlighter: highlight.js
output:
  html_document:
    theme: flatly
job: null
knit: slidify::knit2slides
mode: selfcontained
hitheme: tomorrow
subtitle: A simple Shiny application
framework: io2012
widgets: []
---

## Presentation
**Base Converter** is a simple Shiny application.

It has been realized for the *Developing Data Products* on Coursera.

- Link to the application:

http://neopanda.shinyapps.io/BaseConverter

- Link to the repository:

https://github.com/neopanda/Developing-Data-Product

---

## Description

This application convert binary, octal, decimal or hexadecimal input into binary, octal, decimal or hexadecimal output.

This is very useful for logic programming or cryptography.

![Illustration for logic programming][image1]
[image1]: http://www.ee.nmt.edu/~rison/ee308_spr01/supp/010122/dec_hex_bin.gif

---

## Demonstration

- Link to the application:

http://neopanda.shinyapps.io/BaseConverter

There are 2 sides on this application:
<ul>
    <li>
        The input is where you put your number to convert. You have to tell the application:
        <ul>
            <li>the input base of your inquiry</li>
            <li>your inquiry</li>
            <li>the output base of your inquiry</li>
        </ul>
    </li>

    <li>The output is where you can get your number converted.</li>

</ul>

That's all: it's very simple =)

---

## Details

<ul>
    <li>This application uses the R.utils package.</li>
    <li>The converting function takes a string as an input and also outputs as string.</li>
    <li>By this, it's easy to reuse this into another functions like mathematical, logic or text processing functions.</li>
    <li>The code is very simple so you should try to see what is inside.</li>
</ul>


