---
title: Tezos
linktitle: Tezos
toc: true
type: docs
date: "2019-09-24T00:00:00+01:00"
draft: false
menu:
  overviews:
    parent: Governance Overviews
    weight: 40

# Prev/next pager order (if `docs_section_pager` enabled in `params.toml`)
weight: 40
---



## Where does the governance happen?

Formal governance is [on chain](https://tzscan.io/proposals) with Bakers voting to select, approve and adopt changes to the protocol. In August 2019 [Tezos Agora](https://www.tezosagora.org/period/18) launched, it provides an overview of the protocol update cycle and links to a Discourse [forum](https://forum.tezosagora.org/) for discussion. Prior to this discussion of proposals had occurred on [Kialo](https://www.kialo.com/tezos-protocol-amendment-1-25295), [tezvote](https://tezvote.com/) and in chats. 

## Consensus 
Tezos uses Proof of Stake consensus and selects "bakers" to produce blocks based on the number of "rolls" of XTZ they have. The minimum roll size is 8,000 XTZ (was initially 10,000 XTZ by was changed to 8,000 following the first [upgrade](https://www.coindesk.com/welcome-to-athens-tezos-completes-historic-first-blockchain-vote) approval) or about $13,360 at 05/21/2019 prices. Holders can also delegate their XTZ to bakers, who use it to add rolls to their stake and improve their chances of being selected to bake - bakers pass some of the reward back to the delegators minus a [fee](https://mytezosbaker.com/) of 5-33%. On May 21 2019 there [are](https://tzscan.io/context) 447.5 million XTZ delegated of a total 564.5 million XTZ staked (79% delegated). 

* *What is the mechanism for ensuring consensus about the state of the blockchain?*

The process of adding new blocks to Tezos is referred to as Baking, and so Bakers are the only actors who participate in creating new blocks and voting on consensus rule changes. There is a minimum "roll size" (number of XTZ held) requirement to be a baker is 8k XTZ (was initially 10k XTZ and changed to 8k XTZ after the completion of the first upgrade cycle) - and so Tezos' consensus mechanism can be considered to be a form of PoS. Delegation is also baked into the Tezos protocol, and holders who do not wish to bake themselves can delegate their stake to a Baker and receive a share of their rewards. Tezos could therefore be considered to have Delegated Proof of Stake (DPoS), but without the fixed number of block producers and election dynamic usually associated with DPoS (the number of possible Bakers in Tezos is much larger). The Tezos implementation of PoS has been referred to as [Liquid Proof of Stake](https://medium.com/tezos/liquid-proof-of-stake-aec2f7ef1da7).

* *Which entities interact with the blockchain? What role does each entity play? How are the "block producers" selected?*

[Bakers](https://tezos.gitlab.io/mainnet/whitedoc/proof_of_stake.html) are the only entities that participate in creating new blocks, they do so by baking a new block when randomly selected, and by endorsing the new blocks of other bakers (a single block can have many endorsers, and the reward for endorsing is smaller than for baking). Through this method of baking and endorsing, rival blocks engage in short-term competition but are quickly locked in as subsequent blocks are baked. When proposing or endorsing new blocks, a Baker puts up some of their stake as a security deposit - if other bakers observe them double baking or endorsing (and possibly other types of bad behavior) they can be accused and lose this security deposit (with half going to the accuser). 

* *How are changes to the consensus rules decided on and implemented?*

Bakers participate in a four-stage voting [process](https://medium.com/tezos/amending-tezos-b77949d97e1e) to adopt changes to the consensus rules. The amendment process has 4 phases, each lasting 8 "cycles" (a cycle lasts around 3 days, so each phase lasts for around 24 days). In the first phase bakers submit and upvote proposals. When the first phase ends, the most upvoted proposal will progress to phase 2, where it must be approved by at least 80% of bakers. If the criteria are met, this is followed by a testing phase in which a testnet fork with the changes applied is created and runs for 48 hours (a further testnet matching the proposal may be run for the rest of this phase to allow further testing). After the testing phase, bakers vote on whether the changes should be activated, with an 80% supermajority required (adjusts dynamically based on previous participation rates). After this 4th phase the changes are activated (or not) and the cycle begins again with new proposals. Unlike most other blockchains, bakers do not need to manually update their baking software to implement approved consensus rule changes. These changes are automatically propagated to bakers in the form of cryptographically-verifiable source code, which is then compiled by the baking software to update its consensus rules. Due to this property, Tezos refers to its blockchain as "self amending". In addition to changes adopted via on-chain voting, there can also be user-activated upgrades, in which bakers download and manually install software that has not gone through the normal governance process. Tezos states that such upgrades are only expected to be used only for "non controversial bug fixes or emergency reactions to unexpected behaviour".

Holders who delegate their XTZ to bakers have no direct input into decision-making votes, but bakers [may engage](https://twitter.com/JacobArluck/status/1113590733771018245) with their delegators when deciding how to vote.

There is only one [implementation](https://gitlab.com/tezos/tezos/) of a Tezos full/baking node.

### Further reading 

<https://tezos.gitlab.io/mainnet/>

## Coin/Token Distribution

- *How were/are coins distributed? Was there an ICO? Is there inflation now? Is there a fixed supply?*

The Tezos blockchain mainnet [launched](https://tezos.foundation/news/tezos-mainnet-is-live) on June 30 2018. An initial batch of tokens were pre-sold in an [ICO](https://cointelegraph.com/news/the-history-of-tezos-the-infamous-ico-trying-to-rebound-amidst-lawsuits-and-disputes) in July 2017 which raised 66k BTC and 361k ETH, worth approximately $232 million at the time - these contributions being framed as "[non-refundable donations](https://www.reuters.com/article/us-bitcoin-tezos-refunds/no-refund-for-tezos-contributors-cryptocurrency-broker-says-idUSKBN1DF2JQ)". The Tezos Foundation, established in Switzerland, [received](https://tezos.foundation/history) these ICO funds, with a mandate to give "support to Tezos and related technologies as well as to the Tezos community".

The initial supply was composed of 607 million XTZ for ICO funders and 76 million XTZ for each of the Tezos Foundation and DLS - for a total initial supply of 763 million XTZ. Tezos also has ongoing inflation, with ~42 million XTZ awarded to Bakers each year (or a target of ~5.5% annual inflation). https://messari.io/asset/tezos

Dynamic Ledger Solutions (DLS) is a company [created](https://cointelegraph.com/news/the-history-of-tezos-the-infamous-ico-trying-to-rebound-amidst-lawsuits-and-disputes) by Arthur Breitman in 2015 to hold the rights to Tezos software, and contracted by the Tezos Foundation following the ICO. Stakes in DLS were sold to early investors to raise funds for Tezos before the ICO. 

## Funding

The Tezos Foundation was established in 2017 to hold most of the ICO proceeds (and some XTZ), with a mandate to use these funds to "support to Tezos and related technologies as well as to the Tezos community". The foundation has a [council](https://tezos.foundation/tezos-foundation-council) of 5 people who steer its direction and how it allocates its capital.

Some of the ICO proceeds were [allocated](https://steemit.com/cryptocurrency/@roshania/tezos-ico-transparency-memo) to DLS along with an a portion of the initial XTZ tokens. DLS was created by Arthur Breitman to hold the IP for Tezos protocol software, trademarks, etc. Tezos Foundation and DLS entered into a contract whereby the Foundation would pay 8.5% of the ICO proceeds (around $20 million at the time) to acquire DLS and its assets, then release all of the software under a free MIT license. This deal was included in the ICO terms, with a stipulation that it would be completed once the Tezos mainnet had been in operation and stable for 3 months. The Tezos Foundation and DLS were also granted 76 million XTZ each, with DLS's allocation on a 48 month vesting schedule.

There is very little information available about how the Foundation is allocating its funds. There are [often](https://tezos.foundation/news/tezzigator-receives-grant-to-expand-cloud-hsm-support-for-tezos-bakers) [news](https://tezos.foundation/news/supporting-the-development-of-block-explorers-and-smart-contract-languages-for-the-tezos-ecosystem) [items](https://tezos.foundation/news/tezos-foundation-supports-tezos-riot-forum) on the foundation website that say a particular team/project is being funded, but these have no information about how much funding is being given. 

The foundation is being [audited](https://tezos.foundation/news/statement-on-2017-statutory-audit-completed-by-pwc-switzerland) by PwC but no details of its finances are being openly published. 

The Foundation's grant programs [page](https://tezos.foundation/grants-overview) describes Research and Education, Ecosystem, and Community funding streams, but the first two are lacking detail and "RFPs are forthcoming" while the community page just lists some organizations that have received funding.

The grants page says this about the selection process (advisors vote on proposals then the 5-person council vote to approve those the advisors put forward).

> The Foundation’s grantmaking efforts will be administered by the Tocqueville Group, an independent professional services company. All grant proposals are evaluated by an advisory committee before recommendations are sent to the Council for final votes. An advisory committee is composed of scientists and researchers from premier institutions, Tezos developers, serial entrepreneurs, and other qualified community members. A majority of an advisory committee must recommend a proposal in order for it to be sent to the Council for a final vote. Moving forward, only proposals that respond to specific RFPs will be considered. RFPs will be issued on a quarterly basis.

On June 10 2019 the Foundation [announced](https://tezos.foundation/news/announcing-first-cohort-of-ecosystem-grants-and-support-for-new-block-explorers-new-rfp-issued) (an undisclosed amount of) funding for 4 projects, and opened   a new RFP period of 1 month where proposals for certain kinds of project are invited.

This [article](https://medium.com/tocqueville-group/why-tezos-is-the-best-platform-for-tokenized-assets-89a960cfa828) from the Tocqueville Group describes a mechanism whereby a new protocol upgrade could be bundled with a reward for the developers in the form of newly minted coins (inflation). So far, this method has only been used to distribute 100 XTZ to the developers behind the Athens upgrade for a round of drinks, but the idea is that in future developers may include rewards for themselves in their protocol upgrade proposals.

#### How is work other than development (e.g. marketing) funded?

Based on the first [Tezos Foundation bi-annual report](https://tezos.foundation/news/tezos-foundation-releases-first-biannual-report) published Aug 2019, since July 2018 the foundation has distributed $37.4 million to 62 entities/projects. 

* $14.1M to Community Grants
* $14.8M to Research, Education & Core Development Grants
* $8.5M to Ecosystem - Tools & Applications Grants

People at Tezos are exploring ways to decentralize control of some of the development and ecosystem funding.

### Related projects

Tezos Libre [is](https://tzlibre.github.io/)/[was](https://www.reuters.com/brandfeatures/venture-capital/article?id=38757) an attempt to create a rival Tezos chain which would grant tokens to people who participated in the Tezos ICO and claimed them. Tezos Libre was created as a rejection of the decision to require KYC verification for Tezos ICO participants before they could receive their tokens - it billed itself as KYC-free.  

### Significant Entities

Tezos Foundation and DLS mentioned above.



# Significant Events

### Feb 2019

Tezos started [voting](https://blog.nomadic-labs.com/athens-proposals-injected.html) for the first [amendment](https://blog.nomadic-labs.com/athens-our-proposals-for-the-first-voted-amendment.html) to its protocol on February 25 ([simple guide](https://medium.com/tezos-spotlight/tezos-the-first-amendment-a-laymans-guide-7424ef1d3e13), [detailed guide](https://medium.com/tezos/amending-tezos-b77949d97e1e) to amendment process). The amendment process has 4 phases, each lasting 8 "cycles" (a cycle lasts around 3 days, so each phase lasts for around 24 days). In the first phase bakers submit and upvote proposals. There are 2 proposals being evaluated now in the first phase, they both increase the gas limit but one also decreases the minimum "roll size" (amount of XTZ required to be a baker). It is interesting to note that Kialo is being [used](https://www.kialo.com/tezos-protocol-amendment-1-25295) by some Tezos community members to discuss these proposals. When the first phase ends, the most upvoted proposal will progress to phase 2, where it must be approved by at least 80% of bakers. If the criteria are met, this is followed by a testing phase in which a testnet fork with the changes applied is created and runs for 48 hours (a further testnet matching the proposal may be run for the rest of this phase to allow further testing). After the testing phase, bakers vote on whether the changes should be activated, with an 80% supermajority required. After this 4th phase the changes are activated.

### Mar 2019

Tezos [concluded](https://www.coindesk.com/welcome-to-athens-tezos-completes-historic-first-blockchain-vote) the first round of voting for its Athens upgrade. In this round bakers were choosing from between two versions of the Athens upgrade which increases the gas limit, and they chose the Athens A version which also decreases the minimum roll size and lowers the barrier to entry for bakers. The process has now moved on to its next phase, where bakers must confirm that the selected proposal should proceed to a subsequent testing and confirmation phase.

### May 2019

Tezos Athens upgrade [activated](https://www.coindesk.com/in-first-tezos-blockchain-activates-upgrade-by-token-holder-voting) on May 30, marking the end of a process that began in February to select a proposal, endorse it, test it and activate it. One of the lesser discussed aspects of the protocol upgrade was the [generation](https://twitter.com/wisercharlie/status/1134240285238501376) of 100 new XTZ to be claimed by the upgrade's developers for a round of drinks. This has been described as a method of [funding development](https://medium.com/tocqueville-group/why-tezos-is-the-best-platform-for-tokenized-assets-89a960cfa828) through inflation in future, with the developers who make a protocol change proposal incorporating the generation of new XTZ which they can claim as a reward for their work.

### Jun 2019

Arthur Breitman, Tezos founder, published a [blog](https://medium.com/@arthurb/potential-design-for-a-simple-and-evolvable-on-chain-treasury-77cfe2176423) with a design for a "simple and evolvable on-chain treasury". As a starting point, he suggests that funds be collected in a 3-of-5 multisig contract where the signatures are controlled by reputable parties. From there, the treasury could evolve into a system with many participants where proposals are made on chain. Sounds familiar.

There has been some friction between the developer groups working on Tezos software. The OCamlPro team introduced a proposal to fix a security issue and reward themselves from inflation funding - at a time when the other developer teams had agreed to wait and inject a proposal at a later time. OCamlPro's "early" [submission](https://www.reddit.com/r/tezos/comments/by5xy8/proposal_for_amendment_brest_a/) means that the bakers will likely vote it down and thus it will take longer before the "real" proposal is submitted. OCamlPro [appeared](https://www.reddit.com/r/tezos/comments/byqc9i/ocamlpro_what_is_the_real_motivation_behind/) to be feeling frozen out by the other teams, having submitted a bug report and failed to receive acknowledgment. Subsequently, Tezos commons published an [article](https://medium.com/tezoscommons/a-cautionary-tale-ocamlpro-65d692af09f8) which purportedly uncovers details of a plan by OCamlPro to fork the Tezos chain and capture part of the Tezos community and market capitalization - and speculates that the OCamlPro team are acting to destabilize the Tezos community ahead of this move.

### Jul 2019

Another round of the Tezos protocol amendment process is underway, after the Brest proposal by TzScan Baker failed to achieve enough upvotes to progress. Cryptium Labs [injected](https://blog.nomadic-labs.com/babylon-proposal-injected.html) a proposal called Babylon, prepared jointly with Nomadic Labs, on Jul 26, then an amended version 2.0 on Aug 2. This proposal would make a number of changes to the protocol, including a new variant of the consensus algorithm and new Michelson features, and a new proposal quorum requirement would be introduced which would prevent the proposal with the most upvotes progressing to the second phase unless it has support from at least 5% of the stake. This would allow for proposals with little support (like Brest) to be rejected earlier, and the proposal cycle to restart more quickly thereafter.

### Aug 2019

Tezos [launched](https://medium.com/@tezosagora/enter-agora-c9e545ce4862) its [Agora](https://www.tezosagora.org/) governance tracker, which presents live information about the current state of the protocol amendment cycle, as well as historical information about past cycles. Discussion does not happen on the Agora site directly, instead each proposal links to a [Discourse forum](https://forum.tezosagora.org/) post. The functionality afforded by Agora is on par with the [voting.decred.org](https://voting.decred.org/) page, as it presents information about consensus rule change votes. Agora has more to do in this regard, as the Tezos voting process is more complex than Decred's, with the process for deploying new consensus rules having more stages.

The Babylon 2.0 proposal is currently in its testing phase, having beaten Babylon 1.0 (a previous version) in [round 1](https://www.tezosagora.org/period/16) (78% to 22%, voter turnout of 49%) and received virtually unanimous support in the [second round](https://www.tezosagora.org/period/17) (voter turnout of 82%, although only 179 of 463 bakers voted). This protocol change makes a number of improvements, adjusts the dynamic quorum rules to cap it, and mints 500 XTZ from inflation so that the developers can buy some drinks.

The Tezos Foundation made a [grant](https://tezos.foundation/news/camlcase-receives-grant-to-develop-decentralized-exchange-protocol-on-tezos) to CamlCase to develop a decentralized exchange protocol, inspired by Uniswap, on the Tezos blockchain. There are no details about the amount of the grant in the announcement, as is standard for Tezos Foundation reporting.

### Sep 2019

Tezos Foundation [announced](https://tezos.foundation/news/announcing-second-cohort-of-tezos-ecosystem-grants) funding for a second cohort of 14 Tezos Ecosystem Grants, again with no details of how much was awarded or under what terms. In an FAQ the Foundation explained that they do not disclose details of grants as it would harm their negotiating position. The Tezos Foundation Biannual [update](https://tezos.foundation/news/tezos-foundation-releases-first-biannual-report) (released and missed in Aug issue) does have some information about how the Foundation is spending its resources. In the previous year $14.8M was spent on Research, Education & Core Development, $14.1M was spent on Community grants, and $8.5M was spent on Ecosystem Tools and Applications Grants. On Jul 31 2019 the Foundation held assets valued at $652M, 61% as BTC, 15% as XTZ, 15% in a "stability fund" (diversified portfolio of Bonds, ETFs, Commodities), and 6% as USD fiat.