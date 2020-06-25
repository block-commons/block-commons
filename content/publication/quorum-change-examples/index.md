---
title: Politeia Quorum Requirement Exploration
authors:
- richard
date: "2019-03-20T00:00:00Z"
doi: ""


#publication_types: ["3"]

# Publication name and optional abbreviated publication name.
# publication: In Pi Research
publication_short: Pi Research

# Summary. An optional shortened abstract.
summary: This piece considers how changing the way that the quorum requirement is defined for Politeia proposals would affect the outcomes of proposal votes.

tags:
- Politeia
- Proposal Voting
- Decred
featured: false

links:
url_code: 'https://github.com/RichardRed0x/pi-research/blob/master/scripts/quorum-change-results.R'
url_dataset: 'https://github.com/RichardRed0x/pi-research/blob/master/analysis/voting/dummy-prop-data.csv'

# Featured image
# To use, add an image named `featured.jpg/png` to your page's folder. 
image:
  caption: ''
  focal_point: ""
  preview_only: false

projects:
- politeia-decision-support
- pi-research
---
This piece considers how changing the way that the quorum requirement is defined for Politeia proposals would affect the outcome of proposal votes. 

Currently, proposals must meet a quorum requirement to be approved - at least 20% of live tickets must vote Yes or No on the proposal.

I am in favour of changing the requirement so that it is defined in terms of Yes votes only. In scenarios where a proposal has a strong approval percentage but not enough votes to reach the quorum requirement, someone who did not wish to see it pass could be better off not voting than voting No, because their No votes would be unlikely to push the approval percentage below 60 but would help it to reach the quorum requirement. I think it would be worthwhile to remove this potential barrier to voting no, so that we might get a better signal of what stakeholders want.

I have mocked up a data-set with evenly spaced proposal outcomes and used it to illustrate how the current quorum requirement works, along with 3 variants using a cut-off based on Yes votes only. I used 40,960 as the number of eligible tickets.

* yes12: requirement that 12% of eligible tickets vote Yes - this would be equivalent of removing No votes from how the quorum requirement is currently defined.
* yes16: requirement that 16% of eligible tickets vote Yes.
* yes20: requirement that 20% of eligible tickets vote Yes.
* **Addition:** score12: requirement that the net Yes - No score must be greater than 12% of tickets (Dash uses this kind of quorum, with a 10% cut-off)

Each point on the graph below is a (dummy) proposal, and the color reflects its outcome. The red points are proposals that would be rejected for not reaching 60% approval, these are the same in each scenario because no change to the approval percentage is being considered. Blue points are proposals that reached the 60% approval rating but would be rejected for failing to reach the quorum requirement.

![Simulated/dummy proposal outcome data under 5 different quorum requirement definitions](simulated-proposal-outcomes-5-scenarios.png "Simulated/dummy proposal outcome data under 5 different quorum requirement definitions")

To take one of the more extreme sets of examples: under the current rules a proposal with 8,000 Yes votes and 0 No votes would fail because it did not reach the quorum requirement, whereas a proposal with 5,500 Yes votes and 2,800 No votes would pass.

So far, the results for proposals that have finished voting are mostly well outside the space considered above, because they have tended to exceed the quorum requirement by some distance. The only historical proposal outcome that would have changed as a result of adopting any of the thresholds considered here is the [tutorials](https://proposals.decred.org/proposals/a3def199af812b796887f4eae22e11e45f112b50c2e17252c60ed190933ec14f) proposal, which with 7,800 Yes votes at the end would have failed to meet a quorum requirement of 20% of eligible tickets voting Yes.  

![Historical proposal outcomes](Proposal-outcomes-historic-and-simulated.png "Historical proposal outcomes")

 