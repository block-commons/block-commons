---
# Course title, summary, and position.
linktitle: Polkadot
summary: Answers to a set of questions about the project's governance
weight: 1

# Page metadata.
title: Polkadot
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



# What is Polkadot?

Polkadot is a protocol and network, and it is a blockchain, but the Polkadot blockchain is just one of many blockchains in the Polkadot network. This sets is apart from the other projects that have been studied for crypto governance research, usually these are either their own blockchain and protocol, of they're running within another blockchain. Polkadot's identifying feature is having a whole ecosystem of blockchains which are connected. So far (writing in Oct 2020) these different blockchains are still finding their feet, and many are clones of each other - a few examples will be considered in detail below.

Connecting the various Polkadot "parachains" is the "[relay chain](https://wiki.polkadot.network/docs/en/learn-architecture)", which coordinates interactions between parachains, provides security for them, and handles a few specific types of transactions related to governance and paying for Parachain slots. Slots for parachains to connect to the relay chain are limited, and paying for these is one of the uses of the DOT token which is the native asset of the Polkadot blockchain. The idea is that each blockchain serves a particular purpose within the network, and some of these will be quite specialized, like for example bridge chains that connect with other blockchains outside the Polkadot network.

## Where does the governance happen?

The [polkadot.js.org](https://polkadot.js.org/apps/?rpc=wss%3A%2F%2Fcc1-1.polkadot.network#/staking) site provides a wallet and an overview of the Polkadot network (it's possible to switch between different blockchains within the network and get the same kind of information for each one). This includes a [Democracy](https://polkadot.js.org/apps/?rpc=wss%3A%2F%2Fcc1-1.polkadot.network#/democracy) tab, which is for proposals which amend the protocol rules or change some parameter. There is also a [Treasury](https://polkadot.js.org/apps/#/treasury) tab, where one can see proposals for Treasury spending, so far these do not have a lot of supporting information (or descriptive titles). There's also a place to see the elected [council](https://polkadot.js.org/apps/#/council), more on this below.

{{< figure src = "polkadot-js.png" title = "polkadot.js.org app Democracy tab for Polkadot blockchain">}}

There are at least two sites that ingest on chain governance data and provide discussion and polling tools to support this. [Polkassembly](https://polkadot.polkassembly.io/) is one of these, pulling in on chain consensus rule change and funding proposals, another is [commonwealth.im](https://commonwealth.im/polkadot). These platforms also work with other blockchains within the Polkadot network, although for most chains their discussion spaces are sparsely used.

{{< figure src = "polkassembly.png" title = "Polkassembly view of on-chain referenda">}}

## Consensus

Polkadot uses a variant of PoS [consensus](https://wiki.polkadot.network/docs/en/learn-consensus) referred to as "nominated Proof of Stake". This is considered a hybrid form of consensus because it splits the block production mechanism (BABE) from the "finality gadget" (GRANDPA) that determines when a block is finalized.

> This is a way of getting the benefits of probabilistic finality (the ability to always produce new blocks) and provable finality (having a universal agreement on the canonical chain with no chance for reversion) in Polkadot.

The actors who participate in maintaining consensus for Polkadot are Validators, Collators, and Nominators.

**Validators** are elected by nominators, the validators with the most DOT staked (plus bonded from nominators) can participate in creating new blocks. There is a target number of validators, v, and the candidates with the most staked make up the set of active validators.

All validators receive the same basic reward for participation in block production, regardless of how much each validator has staked. There is however a system of "[era points](https://wiki.polkadot.network/docs/en/maintain-guides-validator-payout#era-points)" whereby validators that perform specific actions (producing blocks and uncles, issuing validity statements for parachains) get points which entitle them to extra rewards at the end of that era. It is also possible for users to offer validators tips for including blocks.

The bonds which validators (and nominators) stake are slashed if the validator is found to be misbehaving. Unlike rewards, slashing _is_ proportional to amount staked, so another reason not to stake too much with one validator.

The slashing system is fairly complex, with 4 levels of misconduct and punishment slashes of 0.1% - 10% for level 1-3, all the way up to 100% for a level 4 offence. For level 4 offences there is an off chain voting process to decide how much will be slashed and how much of that amount will go to the validator who provided evidence of the offence (generally up to 10% of the slashed amount).

{{< figure src = "level-4-fishermen.png" title = "For level 4 misconducts, fishermen are required.">}}

In each era, BABE (Blind Assignment for Blockchain Extension) assigns slots to active validators according to stake and the Polkadot [randomness cycle](https://wiki.polkadot.network/docs/en/learn-randomness). Validators participate in a lottery for each slot (slots cover ~6 seconds), so it is possible that more than one validator can be valid for a slot - the first block to propagate is retained and the other becomes an uncle (thus gets a reward). There is also a backup block production mechanism in case no validator wins the lottery for a slot.

Polkadot's fork choice rule is based on the number of primary blocks build on the last block GRANDPA finalized.

> GRANDPA (GHOST-based Recursive ANcestor Deriving Prefix Agreement) ... works in a partially synchronous network model as long as 2/3 of nodes are honest and can cope with 1/5 Byzantine nodes in an asynchronous setting. A notable distinction is that GRANDPA reaches agreements on chains rather than blocks, greatly speeding up the finalization process, even after long-term network partitioning or other networking failures.

**Collators** maintain parachains by collecting parachain transactions from users and producing state transition proofs for validators.

> Collators maintain a full-node for the Relay Chain, and a full-node for their particular parachain; meaning they retain all necessary information to be able to author new blocks and execute transactions in much the same way as miners do on current PoW blockchains. Under normal circumstances, they will collate and execute transactions to create an unsealed block and provide it, together with a proof of state transition, to one or more validators responsible for proposing a parachain block.

The collators (will?) also provide an [XCMP](https://wiki.polkadot.network/docs/en/learn-crosschain) messaging service between parachains, with the collator for each parachain passing the message directly, with only a hash appearing on the relay chain.

* *How are changes to the consensus rules implemented?*

Before consensus rule changes are activated, they must pass in a [referendum](https://wiki.polkadot.network/docs/en/learn-governance#referenda), which is a stake-weighted vote of DOT holders. Referenda that pass will be enacted, via an amorphous on-chain state-transition function, after an "enactment period" delay of 28 days.

There are a few ways in which referenda can be started. There is a **public referenda** process where anyone can propose a referendum by depositing tokens, others can support by bonding their tokens also, and the proposal with the highest amount of bonded support will be selected to be a referendum. (*Not clear if this is live yet)

The **council** can put a **referendum** to a token vote by approving it directly, and in cases where the council agrees unanimously on the proposal it benefits from "negative turnout bias" which makes it easier to pass. 

There are separate queues for public and council referenda, and every 28 days the top proposal in one of the queues (alternating) is brought to a vote.

> The "top" proposal is determined by the amount of stake bonded behind it. If the given queue whose turn it is to create a referendum has no proposals (is empty), and there are proposals waiting in the other queue, the top proposal in the other queue will become a referendum.

> Multiple referenda cannot be voted upon in the same time period, excluding emergency referenda.

Polkadot features [voluntary locking](https://wiki.polkadot.network/docs/en/learn-governance#voluntary-locking) of DOT tokens to boost voting power in referenda - the token holder decides how long to lock their DOT, and gets more voting power if they lock for longer. 

Public proposals have a positive turnout bias, where it is harder for them to pass with lower turnout, but as turnout increases towards 100% they need just a simple majority. Proposals with unanimous council support have a negative turnout bias, where a super-majority of nay votes is required to reject a proposal at low turnouts - tending towards simple majority at high turnouts. Council proposals with majority but not unanimous support of the council have a simple majority requirement to pass.

So far the council proposals have all passed, and none of the public proposals have passed. It is interesting to note that the latest public [proposal](https://polkadot.polkassembly.io/post/96) being voted on at time of writing concerns forcing a balance transfer from an alleged phisher to their victim.

### Council

The [Council](https://wiki.polkadot.network/docs/en/learn-governance#council) is intended to represent passive stakeholders. DOT holders vote to elect members (starting at 13 seats, expanding to 24 seats) by bonding their tokens. While DOT used to elect councillors is bonded it cannot be spent, but it can be un-bonded at any point. Voting for councillors is based on ranked preference and occurs on an ongoing basis, with votes being tallied every day.

The Council has a role to play in deciding which consensus rule change proposals will have a relatively easy or hard time passing their referendum votes. The Council also has full authority over the Polkadot treasury (see Funding below).

Council members are selected by the same kind of [Phragmén election](https://wiki.polkadot.network/docs/en/learn-phragmen) process that is used to select validators and runners-up (who will remain in the queue with votes intact for the next election). A [prime member](https://wiki.polkadot.network/docs/en/learn-governance#prime-members) is also selected based on a [Borda count](https://en.wikipedia.org/wiki/Borda_count) of the votes, the votes of the prime member become the default for all council members who do not vote on a proposal. This is intended to discourage "soft approval" among councillors by abstaining and letting other councillors take decisions on their behalf.

### Technical Committee

The Technical Committee consists of teams that have "successfully implemented or specified either a Polkadot/Kusama runtime or Polkadot Host. Teams are added or removed from the Technical Committee via simple majority vote of the [Council](https://wiki.polkadot.network/docs/en/learn-governance#council)."

The technical committee can, in addition to the council, pass emergency referenda. These emergency referenda are intended to address urgent technical matters, they fast-track voting and implementation phases and can run concurrently with another proposal vote. 

## Coin/Token Distribution

The Web3 Foundation [conducted](https://cryptopotato.com/the-story-of-polkadot-starts-with-the-2017-ico-2000-roi-for-early-investors/) an [ICO](https://coincodex.com/ico/polkadot/) for the DOT tokens in 2017, raising $140M for 50% of the 10M DOT token supply. However, some months later Web3 Foundation was [badly affected](https://medium.com/web3foundation/web-3-multi-sig-wallet-update-245d30df0fb3) by a bug with the parity multi-sig wallet on Ethereum, where [$98M](https://www.coindesk.com/ico-funds-among-millions-frozen-parity-wallets) of the ICO ETH funds were rendered frozen.

DOT tokens were also sold in private sales in 2019 and [2020](https://www.coindesk.com/polkadot-raises-43m-in-72-hour-private-sale-source), the latter raising a reported $43M.

Shortly after mainnet launch, DOT was re-denominated to multiply the supply by 100x, following the [conclusion](https://polkadot.network/the-results-are-in/) of the network's first governance vote, where voters chose between "no split", or 10/100/1000x "split" of the tokens, with 100x getting approval from 86% of the votes (voters could vote yes to more than one option - interestingly, only 4% voted to not redenominate). At the time of the redenomination, ICO investors had seen a return of about 2,000% in dollar terms.

 This [article](https://en.longhash.com/news/around-60-of-polkadot-token-holders-are-most-likely-individual-investors) on *longhash* article looked at the participants in the ICO on Ethereum and found that a total of 3,050 addresses participated, with 1,801 of these receiving fewer than 100 DOTs but 4 whales each receiving over 100,000 DOTs.

 {{< figure src = "DOT-initial-distribution.png" title = "Distribution of the 50% of DOT sold in ICO">}}

# Funding

Polkadot's [treasury](https://wiki.polkadot.network/docs/en/learn-treasury) is "a pot of funds collected through transaction fees, slashing, [staking inefficiencies](https://wiki.polkadot.network/docs/en/learn-staking#inflation), etc." Stakeholders can make proposals by reserving a deposit of 5% of the requested amount or 100 DOT (whichever is higher), if the proposal is rejected the deposit is slashed, if the proposal is accepted it is returned. There is a [Council](https://wiki.polkadot.network/docs/en/learn-governance#Council) which decides whether proposals are approved or rejected. 

When proposals are approved, there is a waiting period of 24 days before payments are made, known as the budget period. Any DOT held by the treasury at the end of a budget period has 1% burned, to incentivize the treasury to spend it all as it comes in. 

The treasury is funded from a variety of sources, including by receiving most of the DOT slashed from misbehaving validators (~10% of this goes to the validator that provided evidence of misbehavior, the rest goes to the treasury). The treasury also gets a piece of various fees, although the rates are not clearly displayed anywhere.

While the treasury proposals are made and processed on chain, only minimal information about the proposal is stored on chain. It is therefore up to the proposal owner to make the community aware of it by announcing their proposal. Recommended venues for dissemination include Matrix channels, the [Polkassembly](https://kusama.polkassembly.io/) platform, forums and [commonwealth.im](https://commonwealth.im/). Polkassembly and commonwealth.im automatically read proposal data from the blockchain and create discussion spaces around them, offering tools like sentiment gauge polls (based on accounts, not DOT balances). There is also a space for council members to reflect their opinions but this does not seem to be used.



## Significant Entities

**Parity technologies** is a blockchain software company which produced Ethereum node and wallet software, and clients for Bitcoin and Zcash, as well as all of the core software for Polkadot. The Parity website cites 60+ developers with a 30% remote workforce. Dr. Gavin Wood was a co-founder of Ethereum and Parity and is the sole author of the Polkadot [white paper](https://polkadot.network/PolkaDotPaper.pdf).

I can find no documentation on the DOT allocation which Parity received or how they are funded, so it is not clear how much power they retain over the network through token holdings. 

**The Web3 Foundation** was created to facilitate the Polkadot ICO and its subsequent development. It has a council of 3 members: Dr. Gavin Wood, Dr. Aeron Buchanan and Reto Trinkler - all Ethereum Foundation alumni. Neither whitepaper, lightpaper, or website mention how many DOT tokens the Web 3 Foundation received. I found the below graphic in an external [article](https://en.longhash.com/news/around-60-of-polkadot-token-holders-are-most-likely-individual-investors) about the DOT distribution, it had apparantly been displayed on polkadot.network but the URL now redirects to the home page.

{{< figure src = "DOT-supply.png" title = "DOT allocations for auction and Web3">}}

According to this the Web3 Foundation was to receive 30% of the initial 10 million DOT, and presumably they did receive this allocation of the initial supply.

The Web3 Foundation has been running grants programs since 2019, and has [funded](https://github.com/w3f/General-Grants-Program/blob/master/grants/accepted_grant_applications.md) over 100 projects. No details are provided about how much has been given to each project, or on what terms. Nor has any aggregate funding information been provided.

There are open calls for applications to a general grants program (up to $100k) and an open grants program (up to $30k), both directed towards technical work. 

## Kusama

Kusama is a kind of sister chain to Polkadot, it is virtually identical in many respects but has some different parameters, and it is intended to serve as a faster-moving and more experimental version of Polkadot. It is described as Polkadot's "[canary network](https://medium.com/polkadot-network/kusama-network-7446706b8f4c)", if it dies something is wrong with the code.

Polkadot and Kusama also share their [documentation](https://wiki.polkadot.network/docs/en/learn-launch) to a surprising degree, with some pages explaining how the two chains differ on some aspects and other pages describing an aspect from the perspective of one chain or the other. The chains also share an initial distribution, with KSM tokens being allocated alongside DOT tokens to ICO participants. KSM has not redenominated its tokens (yet), and the market capitalization of KSM is approximately 6% that of DOT (Oct 2020 prices). 

## Edgeware

Edgeware is one of the early parachains which made a name for itself with an innovative "[lockdrop](https://medium.com/commonwealth-labs/whats-in-a-lockdrop-194218a180ca)" distribution method, which was used for allocating 90% of the EDG tokens. Participants could time-lock ETH for between 3 and 12 months, receiving more EDG tokens for time-locking more ETH for longer. There were around 6,000 participation [events](https://commonwealth.im/edgeware/stats), and 1.2M ETH was locked. This represented some opportunity cost, but a low risk, for participants - and the EDG team presumably derived some benefit from the locked ETH.









