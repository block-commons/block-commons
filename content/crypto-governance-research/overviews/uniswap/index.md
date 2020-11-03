---
# Course title, summary, and position.
linktitle: Uniswap/SushiSwap
summary: Answers to a set of questions about the project's governance
weight: 1

# Page metadata.
title: Uniswap/SushiSwap
date: "2020-10-26T00:00:00Z"
lastmod: "2020-10-26T00:00:00Z"
draft: false  # Is this a draft? true/false
toc: true  # Show table of contents? true/false
type: docs  # Do not modify.

# Add menu entry to sidebar.
# - name: Declare this menu item as a parent with ID `name`.
# - weight: Position of link in menu.
menu:
  overviews:
    parent: Governance Overviews
    weight: 100
---

Uniswap and SushiSwap exist on Ethereum, and so Ethereum's governance and enforcement of consensus rules are relevant also for these projects. Questions about "consensus" will be answered in relation to the smart contracts or protocol that operates the Uniswap/Sushiswap decentralized exchanges.

## What is Uniswap?

Uniswap is a Decentralized Exchange that runs on Ethereum, it popularized the idea of liquidity pools (first introduced by Bancor) and automated market makers. Uniswap gained an advantage over Bancor in the market because it allowed users to use ETH in place of BNC tokens - i.e. they just need ETH and the other token it's trading against in the pool they wish to join.

Uniswap, and other Decentralized Exchanges which use **liquidity pools**, have abandoned the order books model which is popular with centralized exchanges (and more traditional markets like stock exchanges). This model is problematic in the on chain environment because it is not optimised to minimize transactions (and fees), and it relies on market makers to function well.

### Automated Market Makers

Most buyers and sellers do not want to leave orders open on an exchange for a long time in order to potentially buy something, they would prefer that there is enough of it available to trade in the market (open orders) that they can buy or sell as much as they want immediately, with minimal slippage. Slippage means the price increases as you buy more, or decreases as you sell, so that you end up getting worse than market rate for larger orders. **Market makers** are paid, in conventional markets by the exchange operator, to maintain enough open orders (liquidity) so that users of the exchange can buy and sell with convenience. 

In an order book system, trades happen when buyers and sellers find a mutually agreeable price. Market makers constantly move their orders to track the price and provide liquidity in that range. In a liquidity pool system, users who wish to provide liquidity to the market deposit their tokens in smart contracts and get "liquidity provider tokens" (LP tokens) in return. When users of the market buy one of the assets, the smart contracts determine the price with a formula based on the balance of the two liquidity pools. Uniswap charges a fee of 0.3% on each trade, and these fees are also awarded to LP token holders, and can be claimed along with their deposited tokens when they withdraw them from the liquidity pool.

This system is also known as an "automated market maker" (AMM), because it removes the need for someone to act as a market maker, by using a different method of determining the price. 

Before considering Uniswap's governance, we will take a detour via SushiSwap, because Uniswap's method of governance seems to have been formulated at least in part as a response to SushiSwap's success at the time.

## What is SushiSwap?

SushiSwap is UniSwap's smart contracts, with an extra token that is issued to Liquidity Providers. The SUSHI tokens receive fee revenue and allow holders to participate in SushiSwap governance.

This [Decrypt article](https://decrypt.co/41236/SushiSwap-what-happened-what-it-means-for-defi-and-whats-next) by The Defiant has a good summary of SushiSwap's history.

As UniSwap's smart contracts are open source, a pseudonymous developer (Chef Nomi) was able to single-handedly clone its fundamental components and add some additional features to their version - the SUSHI token and its functions. Participants in SushiSwap pools would get SUSHI as well as the LP tokens, some of the fees would go to SUSHI tokens, and governance of the protocol would happen with SUSHI voting.

**Token distribution:** SUSHI tokens are distributed to LPs, the standard rate is 100 SUSHI per Ethereum block but this was bumped up to 1,000 SUSHI per block for the first ~2 weeks to incentivize early adoption and aid with "the migration".

In addition, SushiSwap specifically targeted the LP tokens of Uniswap users, these were originally the only asset that could be deposited to earn SUSHI. This has been termed a "vampire attack", as it was intended to suck the liquidity out of Uniswap and bring it directly to SushiSwap, using Uniswap's own tools.

Most of the Uniswap LP tokens duly ended up at SushiSwap, and the total value locked in Uniswap pools grew markedly around this time (from $285M to $1.5B in 9 days) - ostensibly because of demand to deposit the LP tokens in Sushiswap to gain SUSHI.

> By Sept. 4 there was $1.8B in Uniswap and $1.6B of its liquidity tokens in its fishy fork.

So, the availability of SUSHI tokens was benefitting Uniswap by driving more liquidity providers to their DEX - while at the same time planning to migrate them to the Sushiswap DEX and actively acquiring their LP tokens in preparation for doing so.

SushiSwap was pitched by its creator as a "community-owned" version of Uniswap. Where Uniswap had taken seed and venture funding, and was beholden to these investors, Sushiswap could effectively cut them out and award all of its tokens and governance rights to users (LPs). Governance by the community was a major rallying call for SushiSwap when it was first gaining traction, it's much more meme-able than "let's use this software without paying the people who wrote it and invested in its production". Side note: A major theme of Ethereum's corner of crypto twitter while this was going on was friction between people who were opposed to this kind of ripping off of others' work, and those who saw it as liberating the smart contracts from the profiteering of their authors. 

Another of SushiSwap's additions was a development fund which received 10% of the tokens, to which Chef Nomi held the keys. Despite prior assurances that "I don't sell any token", on Sep 5 all $13M worth of SUSHI in the development fund was traded for ETH on Uniswap. The price of SUSHI dropped by 70% as word circulated that the Chef had cashed out the dev fund, and although initially they said they would "focus on the technicality of the migration", this later transitioned to "good luck with it", possibly in response to the fallout from liquidating the dev fund. 

In the Chef Nomi shaped power vacuum, the main person to [step in](https://twitter.com/SBF_Alameda/status/1302471970508779521) and fill the void was Sam Bankman-Fried (SBF) - the CEO of FTX, a centralized exchange, and also Alameda Research. Both companies were known to be quite heavily involved in farming SUSHI tokens, and SBF quickly became established as the de facto head chef. Chef Nomi was persuaded to hand over the keys to the dev fund and smart contracts to SBF.

To round out the Chef Nomi part of the saga: the Chef [returned](https://www.coindesk.com/sushiswap-creator-chef-nomi-returns-dev-fund) all $14M of ETH to the original developer fund wallet on Sep 11, 6 days after withdrawing it. The Chef [apologized](https://twitter.com/NomiChef/status/1304442495342796800) and said the community could decide how much to reward them with and any lock-up schedule. Chef Nomi's reputation took a major hit in the community when the dev fund was liquidated, and giving the money back does not seem to have rehabilitated his image entirely. Chef Nomi is not a multi-sig holder, nor are they active on Twitter or GitHub since September.

## Consensus

SushiSwap launched with the idea of community governance at the forefront, but in practice its smart contracts had only one key, and it belonged to Chef Nomi. When the Chef absconded, he transferred that power to SBF. A big migration was planned at this time, which would move the UniSwap liquidity, represented by the UniSwap LPs deposited in SushiSwap pools, to SushiSwap pools. SBF took over the final checks and deployment with the master key.

SBF ran a [twitter likes thread/poll](https://twitter.com/SBF_Alameda/status/1302534617522556929?s=20) to generate a shortlist for a SUSHI vote to select the people who would hold the signatures in a multi-sig system for deploying future protocol changes.

In the SUSHI [poll](https://sushi.zippo.io/election), the top 9 candidates, as voted by 2.3% of the SUSHI tokens (each token could vote yes/no on each option), were selected to receive keys to the 6-of-9 multi-sig wallet. Now the 6-of-9 multi-sig wallet has control over the smart contracts.

Alongside this control by an individual or multi-sig key, signal votes have been used regularly since the beginning to guide the key-holder(s) and establish community support for their intended actions.

This is conducted using the the [snapshot.page](https://snapshot.page/) platform, available to every Ethereum-based token. Unfortunately snapshot.page does not provide a full history of votes, and at present only shows proposals from late September 2020 onwards (about 6 weeks). 

{{< figure src = "snapshot-sushi.png" title = "SushiSwap's snapshot platform proposals on 2 Nov 2020">}}

Voting is based on "Sushipowah", which is based on 1 vote per SUSHI-ETH SLP token locked into the farms.

{{< figure src = "sushi-governance.png" title = "SushiSwap's Governance page on docs on 2 Nov 2020">}}

At the moment there seems to be about 100 Million SUSHI tokens in circulation, and turnout on a recent [proposal](https://snapshot.page/#/sushi/proposal/QmUFuj1RPpNX4AvVsqzcNXKGCQ1ug5nKixW1ncq4yGV45H) was 7.4M Sushipowah (still not entirely sure this is the same as SUSHI tokens) which would be about 7% of all the SUSHI. The top voter in this poll was voting with 1.94M SUSHIPOWAH, and the top 5 of the 56 accounts to vote on the proposal represented 91% of the voting power.

Some of the passing signal votes have yet to result in the approved changes, because it has proven [difficult](https://www.coindesk.com/sushiswap-protocol-deliver-changes) to modify the protocol in ways which would facilitate these changes. The main contract (MasterChef) does not allow changes and it controls many aspects of other contracts, so it looks like all of the smart contracts will have to be migrated to a system which is more upgrade-able.

## Where does the governance happen?

The [snapshot](https://snapshot.page/#/sushi) site is where the token voting happens, but the SushiSwap [forum](https://forum.sushiswapclassic.org/) is also quite important, serving as a place to discuss the various proposals.

Twitter also features informally, as it does for many projects, but in SushiSwap's case it was both the stage for the Chef's downfall, and the place to [collect names](https://sushi.zippo.io/election) for Nomi's multi-sig replacements.

# Funding

10% of all newly generated SUSHI goes into a development [fund](https://etherscan.io/address/0xf73b31c07e3f8ea8f7c59ac58ed1f878708c8a76), and after Chef Nomi returned the ETH this was converted back into SUSHI. It currently (Nov 3 2020) holds 12.5M SUSHI, worth ~$7M.

The snapshot and 6-of-9 multi-sig governance approach is common to decisions about the protocol/smart contracts and decisions about how to spend development funding.

## Uniswap governance

Uniswap's governance, and more specifically the UNI token which it is now based on, was seemingly devised in response to SushiSwap's actions. Previously, Uniswap had not made public statements about how Uniswap would be governed in the future or whether this would involve a token. The apparent success of SushiSwap's "vampire attack" is widely seen as having prompted the [launch](https://uniswap.org/blog/uni/) of the UNI token. UNI would allow Uniswap to compete on the notion of transitioning to community governance, and issuing these tokens to LPs would give them another reason to lend their liquidity to Uniswap's pools.

UNI voting features heavily in Uniswap's planned governance, and directly controls the UNI community treasury, the protocol fee switch, the uniswap.eth ENS, the default list of Uniswap tokens, and SOCKS liquidity tokens.

Delegation of voting rights is a major part of Uniswap's vision for how its governance will be conducted, with a tool to delegate voting power available at launch.

The barrier to submit a proposal is high, the proposer must have 1% of the total UNI supply (themselves and/or delegated). To reach a quorum, 4% of UNI must vote yes on the proposal. Proposal voting lasts for 7 days, with a 2 day timelock on execution of the outcome.

## Token distribution

The UNI token distribution has two phases, the first four years (genesis phase), transitioning to a perpetual inflation rate of 2% after that. 1 billion UNI has been minted for the genesis phase. 

10% of these were allocated to historical users, 251K users of UniSwap before Sep 1 2020 each received a share of 10%, which worked out to 400 UNI each. A further 5% were claimable by historical liquidity providers, pro rata according to their provision. 

Another 43% will be issued to the community treasury, where UNI holders can vote to use it to establish liquidity mining programs and other initiatives. UNI launched with 4 liquidity mining pools in play which were distributing some of these tokens.

21% of the genesis tokens are for the Uniswap company ("team members and future employees") with a 4-year vesting schedule. 

18% of the genesis tokens are for investors in the Uniswap company, with a 4 year vesting schedule.

After UNI's launch, an initial grace period of one month was set before the community treasury tokens would become spendable (aside from the initial liquidity mining pools).

In addition to the role in governance, the UNI protocol (v2) has a switch built in which, when activated, would grant UNI holders a 0.05% fee on each swap (cutting into the LPs' 0.3% and reducing this to 0.25%). Activating this switch is the domain of UNI voters, and should such a proposal pass it comes with a 180 day timer to allow network participants to prepare for its activation.

## Where does the governance happen?

The [gov.uniswap.org](https://gov.uniswap.org) forum is a major venue for Uniswap's governance discussions. It incorporates boards for "temperature checks" and "consensus checks", with the idea that proposals are discussed on first one then the next of these boards before moving on to a formal proposal.

Voting takes place within the Uniswap [app](https://app.uniswap.org/#/vote). Treasury spending was unlocked on October 17 and so far (Nov 3) there have been 2 proposals, both of which failed in a very similar way, with almost exclusively Yes votes, but not enough Yes votes to meet the quorum requirement. The [first](https://app.uniswap.org/#/vote/1) of these was about reducing the requirements for making a proposal and reaching a quorum. It proposed reducing the requirement to make a proposal from 10M UNI to 3M UNI (1% to 0.3%), and reducing the quorum requirement from 40M (4%) to 30M (3%). This proposal had 98% Yes votes, but not quite enough to reach the quorum, a very narrow miss with 3.96% of all UNI supporting. These requirements must be particularly had to meet at this stage because so much genesis UNI remains in the community treasury, or locked in the wallets of developers and investors, vesting, and thus cannot vote.

{{< figure src = "uniswap-proposal-1.png" title = "Uniswap's first proposal">}}

The [second](https://app.uniswap.org/#/vote/2) proposal was about extending the 400 UNI airdrop to 12,619 additional addresses which had interacted with Uniswap through a proxy contract, thus were not eligible for the original airdrop. One of the major beneficiaries of this proposal would have been Dharma protocol users, and Dharma were one of the proposal's sponsors. Both of these proposals had the same set of sponsors and likely supporters, the second one failed with approval of 97%, but only Yes votes from 3.75% of the UNI. If the first proposal had passed, it seems this cadre would have been able to continue passing the quorum requirement at its reduced rate, and given the apparent lack of opposition may have been able to pass proposals at will. This [article](https://cointelegraph.com/news/uniswap-proposal-under-fire-for-enabling-dharma-to-take-over-governance) by Martin Young on *Cointelegraph* considers the first proposal as effectively a takeover attempt, and one of the most discussed forum [posts](https://gov.uniswap.org/t/urgent-discussion-on-current-vote-reduce-uni-governance-proposal-quorum-thresholds/7117/2) made a similar case.

For now, Uniswap's governance appears to be stuck and unable to meet the quorum requirement. However, there are reasons to believe it could become "unstuck" soon. 

1. Delegations are persistent, and one imagines the amount of UNI delegated will grow over time. If this UNI is being delegated to people who are more likely to vote, it will become easier for the people involved in UNI governance to pass proposals. There is a special [board](https://gov.uniswap.org/c/delegation-pitch/) on the forum for delegation pitches. 
2. Much of the genesis UNI amount (1 billion tokens), upon which the requirements are based, is currently quite static, locked up in vesting schedules or the community treasury. Over time the freeing up of these tokens should make reaching the quorum requirement easier and a more frequent occurrence, effect size dependant on what proportion of this unlocking UNI engages in governance. 

### Funding

So far, Uniswap development has been funded by investors in the Uniswap company, who have in turn been rewarded with UNI tokens.

Much of the initial genesis issuance is earmarked for issuance to the community as incentives, and the company's blog post indicates a desire for these tokens to fund a variety of contribution types beyond liquidity provision. It is not yet clear how teams who wish to work on Uniswap in other ways can gain access to the funding, with the requirements to make a proposal being as high as they are.

### Liquidity tug of war

SushiSwap's vampiric tendencies resulted in a forking scenario with some familiar characteristics to the fork and hash wars that have happened with Proof of Work blockchains. Instead of competing for hashpower, Uniswap and Sushiswap were competing for liquidity - the smart contracts are virtually identical, so liquidity is one of the only differentiating features of their products (decentralized exchange), more is better.

{{< figure src = "uni-tvl.png" title = "Uniswap Total Value Locked, source: defipulse.com">}}

{{< figure src = "sushi-tvl.png" title = "SushiSwap Total Value Locked, source: defipulse.com">}}

Key points are the rise in Uniswap TVL as Sushiswap launched, subsequent shift to Sushiswap with the migration, followed by most of the liquidity returning to Uniswap after UNI was launched and the special introductory rates on Sushiswap expired.

A longer-term view of the Uniswap chart shows 2 years of much slower growth in TVL, Sushiswap's launch and popularity appears to have catalysed a much faster uptick in use of Uniswap pools.



