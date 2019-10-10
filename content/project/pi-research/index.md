---
title: Pi Research
summary: Analysis of Politeia data.
tags:
- Decred
- Politeia
- Analysis
- Data
date: "2019-09-19T00:00:00Z"

# Optional external URL for project (replaces project detail page).
external_link: ""

image:
  caption: Photo by sheri silver on Unsplash
  focal_point: Smart

links:
- icon: twitter
  icon_pack: fab
  name: Follow
  url: https://twitter.com/blockcommons
url_code: "https://github.com/RichardRed0x/pi-research/tree/master/scripts"


# Slides (optional).
#   Associate this project with Markdown slides.
#   Simply enter your slide deck's filename without extension.
#   E.g. `slides = "example-slides"` references `content/slides/example-slides.md`.
#   Otherwise, set `slides = ""`.
slides: ""
---

This project is about making use of the Politeia data [repository](https://github.com/decred-proposals/mainnet) to generate data-sets, statistics and visualizations which explore how Politeia is working and being used. Code and data are shared in the project [repository](https://github.com/RichardRed0x/pi-research), and the idea is that people can use this to check for themselves that the analysis as it is reported here is consistent with the timestamped public record of Politeia activity.

Starting with an [understanding of how the data is stored](https://docs.decred.org/advanced/navigating-politeia-data/), this project has produced code to process that data and a number of reports and visualizations which use it. Along the way the analyses have allowed a number of bugs with voting to be spotted and addressed promptly, and   the data processing scripts have allowed aspects of Politeia Digest to be automated.

The following data-sets and statistics in the repository are updated fairly regularly:

* [Proposal Voting Outcomes](https://github.com/RichardRed0x/pi-research/blob/master/data/Decred-proposals-voted.csv)
* [All Proposals](https://github.com/RichardRed0x/pi-research/blob/master/data/Decred-proposals-pi-all.csv)
* [Politeia User Activity](https://github.com/RichardRed0x/pi-research/blob/master/data/pi-users.csv)
* [Politeia Comments](https://github.com/RichardRed0x/pi-research/blob/master/data/pi-comments.csv)
* [Politeia Comment Votes](https://github.com/RichardRed0x/pi-research/blob/master/data/pi-comment-votes.csv)
* [Politeia activity summary stats](https://github.com/RichardRed0x/pi-research/blob/master/data/politeia-stats-all.md)

For charts showing ticket voting over time check out [dcrdata](https://explorer.dcrdata.org/proposals).

![Proposal Participation and Approval](https://raw.githubusercontent.com/RichardRed0x/pi-research/master/data/proposal-participation-and-approval-in-order.png)