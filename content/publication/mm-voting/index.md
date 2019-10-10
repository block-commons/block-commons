---
title: "Market Maker proposal voting analysis"
authors:
- richard
date: "2019-09-13T00:00:00Z"
doi: ""

# Schedule page publish date (NOT publication's date).
publishDate: "2017-01-01T00:00:00Z"

# Publication type.
# Legend: 0 = Uncategorized; 1 = Conference paper; 2 = Journal article;
# 3 = Preprint / Working Paper; 4 = Report; 5 = Book; 6 = Book section;
# 7 = Thesis; 8 = Patent
#publication_types: ["3"]

# Publication name and optional abbreviated publication name.
# publication: In Pi Research
publication_short: Pi Research

# Summary. An optional shortened abstract.
summary: Analysis of how tickets voted on the 3 Market Maker proposals.

tags:
- Politeia
- Proposal Voting
- Decred
featured: false

links:
url_code: 'https://github.com/RichardRed0x/pi-research/blob/master/scripts/ticket-voting-analysis-MM.R'


# Featured image
# To use, add an image named `featured.jpg/png` to your page's folder. 
image:
  caption: ''
  focal_point: ""
  preview_only: false

# Associated Projects (optional).
#   Associate this publication with one or more of your projects.
#   Simply enter your project's folder or file name without extension.
#   E.g. `internal-project` references `content/project/internal-project/index.md`.
#   Otherwise, set `projects: []`.
projects:
- pi-research
# Slides (optional).
#   Associate this publication with Markdown slides.
#   Simply enter your slide deck's filename without extension.
#   E.g. `slides: "example"` references `content/slides/example/index.md`.
#   Otherwise, set `slides: ""`.
slides: example
---
This analysis considers the voting on market maker proposals, looking at the number of proposals each participating ticket is voting on and at patterns within that voting. The aim is to see if there are any differentiating features between the supporters of the various proposals.

![Number of MM proposals voted on per ticket](number-of-MM-proposals-voted-on.png)

This bar chart shows the number of tickets that have voted on 1, 2 or 3 of the proposals so far. 

521 tickets (2.89%) have voted No on all proposals.

331 tickets (1.83%) have voted Yes on all proposals.

I have also looked at the other votes of the set of tickets that votes Yes on each proposal - i.e. the first graph shows how the tickets that voted Yes for i2 Trading voted (or not) on the other proposals. 

![Tickets that voted Yes on i2 Trading](tickets-voting-yes-on-i2.png)

Among tickets that votes Yes on i2, there is a fairly even split between Yes/No/Didn't vote on Grapefruit, i2 supporters are more likely to have voted No on Tantra.

![Tickets that voted Yes on Tantra Labs](tickets-voting-yes-on-tantra.png)

Virtually all of the tickets that voted Yes on Tantra also voted on i2 and Tantra, with more voting No than Yes. 

![Tickets that voted Yes on Grapefruit Trading](tickets-voting-yes-on-grapefruit.png)

Grapefruit supporters mostly voted Yes on i2 and No on Tantra.

I also looked at the previous voting of the tickets that voted Yes to each proposal. For this I am using the number of previous proposals (not one of these 3 proposals) that the ticket voted on as an indicator of how involved that ticket has been in Decred's governance. Tickets of different ages will have had different numbers of opportunities to vote on proposals prior to this, but when averaging over thousands of tickets this should balance out.

The tickets that voted Yes to Grapefruit had voted on a mean 1.86 proposals previously.

The tickets that voted Yes to i2 Trading had voted on a mean 1.42 proposals previously.

The tickets that voted Yes to Tantra Labs had voted on a mean 1.02 proposals previously.

Here's how the votes came in over time:

![Market Maker proposal voting over time](mm-proposal-voting-over-time.png)

You can see charts like this for any specific proposal on [dcrdata](https://explorer.dcrdata.org/proposals), I included this to show all 3 proposal votes in one graph.