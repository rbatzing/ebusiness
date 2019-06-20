--- 
title: "e-Business"
author: "Robert P Batzinger"
date: "2019-06-19"
site: bookdown::bookdown_site
output: 
  bookdown::gitbook:
    lib_dir: "book_assets"
    config:
      toc:
        collapse: subsection
        scroll_highlight: yes
        before: null
        after: |
          <li><a href="https://github.com/rstudio/bookdown">
          Proudly published with bookdown</a></li>
      edit: null
      download: ["book.pdf"]     
  bookdown::html_book: default
  bookdown::pdf_book:
    keep_tex: yes
    includes:
      before_body: before_body.tex
number_sections: yes
documentclass: book
bibliography: [book.bib, packages.bib]
biblio-style: apalike
link-citations: yes
description: "This is a draft of an undergraduate textbook on e-Business from an IT perspective."
---


# Book Jacket {-}

<img src="images/cover11.png" width="50%" />


## Abstract {-}

This book attempts to introduce undergraduate students to the nature and requirements for conducting business online. It starts with a discussion of the nature of business and the challenges and potential of the online environment, followed by a review of common methods of modelling business, and a study of open source business solutions.
The final chapter focuses on emerging trends and sea-changes in e-Business. This book is currently a work in progress that is also comparing the process of book writing in both LeanPub markdown and Rstudio Bookdown 

## About the Author {-}

Robert Batzinger is an emeritus instructor in Computer Science at Payap University. He holds an undergraduate degree in Organic Chemistry, masters degree in Computer Science and Applied Mathematics, doctoral degree in Pathobiology and post-doctoral training in Chemical carcinogenesis. As such, he has been involved in numerous scientific and technical projects for over 50 years. He has published laboratory research in such fields as virology, organic chemistry, anthelmithics, and chemical mutagenesis. He also developed software to manage the financial and academic records of schools, support the development of publications in non-Roman scripts of Asia and Canada, and monitor the progress of multiple development projects. He has held administrative and advisory roles in various organizations and businesses, and has been instrumental in establishing web presence for many of them. He is currently developing data science and machine learning applications to address critical business management problems.







