---
title: 'First Year of Decred's Politeia'
authors:
- richard
tags:
- Governance
- Funding
- Decred
- Politeia
categories:
- Blog
date: "2019-01-01T00:00:00Z"
lastmod: "2019-01-01T00:00:00Z"
featured: false
draft: false
toc: true

# Featured image
# To use, add an image named `featured.jpg/png` to your page's folder.
# Placement options: 1 = Full column width, 2 = Out-set, 3 = Screen-width
# Focal point options: Smart, Center, TopLeft, Top, TopRight, Left, Right, BottomLeft, Bottom, BottomRight
image:
  placement: 2
  caption: ''
  focal_point: ""
  preview_only: false

# Projects (optional).
#   Associate this post with one or more of your projects.
#   Simply enter your project's folder or file name without extension.
#   E.g. `projects = ["internal-project"]` references `content/project/deep-learning/index.md`.
#   Otherwise, set `projects = []`.
projects: []
---

Politeia has been live for one year now, and I have been reflecting on how it has gone in relation to what I was [expecting and hoping](https://blockcommons.red/post/politeia-launch/) when it launched. For a more quantitative view see this [report](/publications/politeia-at-1/).

## Voting to make decisions

As a Decred contributor, having Politeia available is great because now issues where there is no clear consensus among the community can be resolved by a stakeholder vote. For anyone who has not experienced participating in a decentralized peer production effort where there is no hierarchical structure determining who can overrule who - it can be difficult to make decisions in the absence of clear consensus among the contributors. More frustratingly, it can be difficult to draw a line under contentious issues and avoid spending inordinate amounts of time discussing them in a stalemate. 

For decisions relating to Treasury spending or policy, there is now a well-defined method of making them. Someone makes a proposal, when the discussion has run its course there is a week-long ticket vote and the decision is made.

One of the most interesting things about the year has been getting to know what kind of work or service provision the stakeholder community values and wants to fund. Given that the system is entirely opt-in, it is perhaps not surprising that there is strong support for proposals that are seen as being core parts of the broader Decred project. 13 of the 25 proposals to be approved had 90% or greater approval from the tickets that voted. 

This included core work like [Decentralizing Treasury Spending](https://proposals.decred.org/proposals/c96290a2478d0a1916284438ea2c59a1215fe768a87648d04d45f6b7ecb82c3f), funding to prepare a block header commitments [DCP and consensus rule change proposal](https://proposals.decred.org/proposals/0a1ff846ec271184ea4e3a921a3ccd8d478f69948b984445ee1852f272d54c58), and a [policy](https://proposals.decred.org/proposals/fa38a3593d9a3f6cb2478a24c25114f5097c572f6dadf24c78bb521ed10992a4) for clearing new Decred contractors (all with >95% approval). Perhaps more surprisingly, each of the 3 proposals related to the [DEX](https://proposals.decred.org/proposals/417607aaedff2942ff3701cdb4eff76637eca4ed7f7ba816e5c0bd2e971602e1
), which had seemed like a more controversial subject based on community discussions, passed with 90%+ approval.

In addition to the equality of peers, decentralized projects have another set of issues to address in the form of permissionless participation. When the discussion is on a public platform and anyone can join in, it's easy for saboteurs, provocateurs and misguided people to wander in and voice loud support for some sub-optimal course of action. Arguments with people who are just there to cause trouble and misdirection can be exhausting, especially when the decisions are being made within the discussion itself. With a sybil-resistant method of actually making the decisions and assurance that the people voting have skin in the game, this takes some of the weight and heat out of discussions.

The proposals with 90%+ approval relate to software development, policy and research, and all but one of them came from a proposer who was already a contractor. This indicates a high degree of stakeholder support for the contractors working in those domains, who are making those proposals. Outside these domains, looking at marketing, integration and market making proposals, the response from stakeholders is more mixed.

The question of whether Decred should spend Treasury funds on marketing type activities, and how much, has been a contentious one in discussions for a long time. With Politeia we have seen that there is clearly support among the stakeholders for this kind of spending, with substantial [Marketing](https://proposals.decred.org/proposals/c84a76685e4437a15760033725044a15ad832f68f9d123eb837337060a09f86e) and [Events](https://proposals.decred.org/proposals/d3e7f159b9680c059a3d4b398de2c8f6627108f28b7d61a3f10397acb4b5e509) budgets for 2019 being approved (83% and 89% approval respectively). The question of whether to hire a PR firm proved more contentious, with Ditto's first [proposal](https://proposals.decred.org/proposals/27f87171d98b7923a1bd2bee6affed929fa2d2a6e178b5c80a9971a92a5c7f50
) passing with just 62% approval, and the highest voter turnout (51%) of any proposal in the first year.

## Request for Proposals

The first Ditto proposal was interesting because it was also the first "competitive" proposal.  Another PR firm ([Wachsman](https://proposals.decred.org/proposals/bc8776180b5ea8f5d19e7d08e9fcc35f0d1e3d16974963e3e5ded65139e7b092)) had also been invited to submit a proposal, and so the stakeholders had a choice of which firm to hire (if any). In this case it was Dustorf the led the effort to screen PR firms and invited these two to submit proposals, briefing them on where the project was at and how he saw the objectives of their role. The approach to market makers later followed a similar pattern, where jz, Max Bronstein and Chris Burniske screened and invited a number of liquidity providers to submit proposals that conformed to a specific type of offer.

This kind of Request for Proposals (RFP) process seems to work well, in that competition between proposal owners motivates them to make more competitive offers. Observing this kind of ad hoc competition between proposals has allowed us to identify a number of ways in which Politeia can be efficiently augmented to better support this kind of RFP process. A new type of RFP proposal is in development which will group the competing proposals together and allow for the rules of the particular RFP to be specified in detail.

## Watching the votes come in

It surprised me how engaging it can be to watch proposal votes play out. When you are interested in the proposal and have participated in discussions about it for some time, there's a real sense of curiosity about how the votes will go. The competitive proposals have been quite exciting, with the difference between proposals tending to be quite narrow in the early part of the week before one proposal started to stretch out a lead. 

It was also fun to build up [charts](https://twitter.com/slices_of_pi/status/1101580340076924930?s=20) (with s_ben and snr01) so that we could look at the detail of how the votes came in following the hourly updates from the public data [repository](https://github.com/decred-proposals/mainnet). A version of the proposal voting charts was subsequently done properly by [dcrdata](https://explorer.dcrdata.org/proposals), so that these are available on demand for anyone who wants to check them.

One character emerged from looking at these charts, "the 4k whale", a chunk of around 4,000 tickets that voted all at once in the same direction in the same commit (so probably but not definitely the same stakeholder) on many of the proposals. The 4k whale tended to vote near the end of the week, and in the same way as the majority had already voted. Towards the end of the year they seem to have adopted vote trickling to make it less obvious that all of their tickets are controlled by the same stakeholder. RIP 4k whale, by adopting privacy tools we will no longer be able to see how many tickets they're voting with, whether they will retain that impressive stack or even add to it.

## Internal and External spending

The post I wrote one year ago talked a lot about "internal" (expanding the contractor collective to do more "in house") and "external" spending (hiring external parties with a more fixed-term and transactional relationship to the project).

I have labelled each proposal as "Internal" or "External", the labels don't always fit very well but here are the results of looking at proposals through this lens. There were 24 Internal proposals and 29 External proposals according to my categorizations.

![Politeia Internal and External proposals](Politeia-internal-external-proposals.png)

![Politeia Internal and External proposal costs](Politeia-internal-external-proposal-costs.png)

Proposals that are Internal (the work will be conducted by contractors or people who intend to become contractors and contribute to the project on an ongoing basis) were much more likely to be approved. The major External proposals to be approved concerned PR (Ditto are an external entity that the Treasury has contracted with) and market making (i2 Trading is also an external entity). However, in practice the Ditto employees who work on Decred have integrated with the other contributors quite seamlessly, joining and participating in the relevant discussion channels. i2 Trading are an external entity but it is operated by stakeholders who have been contributing to the Decred ecosystem in a number of ways over a sustained period of time.

The idea that Decred Treasury funds should be going to people who have a long term relationship with the project seems to be shared by many of the stakeholders and contributors. 

## Rejection and Abandonment

In the early part of the year there were a number of proposals from people who were unknown to the project, some requesting large budgets (two proposals from REUM stand out, requesting more than $1 million each, and the Baeond card game looking for $220,000). After a number of these proposals were roundly rejected with approval rates of < 5%, this kind of highly speculative proposal became less common.

![]()





Proposal "renewals" (research, Ditto, bounty)



Payment in arrears



Stuff that's not on Politeia



The crap