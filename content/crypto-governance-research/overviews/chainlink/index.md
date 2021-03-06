---
title: ChainLink
linktitle: ChainLink
toc: true
type: docs
date: "2019-06-28T00:00:00+01:00"
draft: false
menu:
  overviews:
    parent: Governance Overviews
    weight: 60

# Prev/next pager order (if `docs_section_pager` enabled in `params.toml`)
weight: 60
---

# Overview

> ChainLink is blockchain middleware that allows smart contracts to securely connect to various APIs, resources, and bank accounts. This occurs through the ChainLink Network. The network is a decentralized system of nodes, better known as oracles, which sell usage of APIs and other resources to a smart contract. The selling of data to the contracts is done through the LINK token, an ERC20 token on the Ethereum Blockchain. The ChainLink team is made up of Sergey Nazarov, CEO, and Steve Ellis, CTO, with 6 advisors.

Chainlink is [open source](https://github.com/smartcontractkit/chainlink/blob/master/LICENSE), and their upcoming decentralized network of nodes was created with specific token economics to make sure the node operators are incentivized to provide the correct answers, and get rewarded for being honest. Chainlink is designed to benefit all participants in its ecosystem:

The Node Operators will be able to receive LINK tokens as form of payment for providing a 24/7 reliable source for the API feeds they choose to offer, and also the option to “stake” their LINK tokens for [collatera](https://github.com/smartcontractkit/chainlink/wiki/Protocol-Information#penalty-deposits)l, which will be requested in some service level agreements.

The Smart Contracts Developers will have end-to-end reliable contracts by confirming the data feed was pulled from their desired source(s). The API Providers will benefit from a new lucrative way to sell their data.

> Chainlink nodes are not the conventional “stake and forget” nodes that we are used to from various Proof of Stake (“PoS”) coins, which require little to no participation once you have staked them. Chainlink nodes need to offer information which is provided via an API (Application Programming Interface)." (https://medium.com/altcoin-magazine/earning-your-way-in-the-trustless-future-chainlink-ecosystem-101-2922d56c9bfa)

> This means that besides having the node running, you also need to know what you are aiming to offer with your node — which API source you are going to offer data from. There may be some APIs that are offered for free, which can be in demand, but competition from other nodes will be higher due to the low barrier to entry. It is likely that most API sources that will have demand will be the ones you need to pay for — usually annual/monthly purchase of the API keys. Keep in mind that re-selling data via a third party API without an agreement is generally against the Terms of Service of the API, and may result in the API provider cutting your access to the API, which can lead to penalty payments for your node." [https://medium.com/altcoin-magazine/earning-your-way-in-the-trustless-future-chainlink-ecosystem-101-2922d56c9bfa](url)

The Chainlink Mainnet launched on [May 30 2019](https://docs.chain.link/docs/create-a-chainlinked-project).

 

# Where does the governance happen?

Chainlink will govern the network through a process it calls validation. The ChainLink Validation System monitors on-chain oracle behavior, providing an objective performance metric that can guide user selection of oracles. It will seek to monitor oracles for:

- Availability: The Validation System should record failures by an oracle to respond in a timely way to queries. It will compile ongoing uptime statistics.

- Correctness: The Validation System should record apparent erroneous responses by an oracle as measured by deviations from responses provided by peers

In the initial, on-chain aggregation system in ChainLink, such monitoring is straightforward, as all oracle activity is visible to CHAINLINK. There is also an off-chain aggregation system envisaged for ChainLink where the oracles themselves perform aggregation. 

Consequently, Chainlink does not have direct visibility into oracle responses and cannot itself monitor avail-ability and correctness. Fortunately, oracles digitally sign their responses, and thus, as a side effect, generate non-repudiable evidence of their answers. 

Chainlink’s proposed approach would be to realize the validation service as a smart contract that would reward oracles for submitting evidence of deviating responses.  In other words, oracles would be incentivized to report apparently erroneous behavior. 

Availability is somewhat trickier to monitor, as oracles of course don’t sign their failures to respond. Instead, a proposed protocol enhancement would require oracles to digitally sign attestations to the set of responses they have received from other oracles. 

The validation contract would then accept (and again reward) submission of sets of attestations that demonstrate consistent non-responsiveness by an under performing oracle to its peers. In both the on-chain and off-chain cases, availability and correctness statistics of oracles will be visible on-chain. Users / developers will thus be able to view them in real time through an appropriate front end, such as a Dapp in Ethereum or an equivalent application for a permissioned blockchain.

The Reputation System proposed for ChainLink would record and publish user ratings of oracle providers and nodes, offering a means for users to evaluate oracle performance holistically. Validator System reports are likely to be a major factor in determining oracle reputations and placing these reputations on a firm footing of [trust.](https://link.smartcontract.com/whitepaper)

**But what about the data?**

The data feeds will be managed by nodes who connect to external APIs and API aggregators like [Fiews.io](https://fiews.io/), [CLC Group](http://www.clcg.io/) and[ LinkPool.io](http://www.linkpool.io/).  LinkPool provides a simple alternative for running your own personal node. Their aim is to allow people to easily earn passive income via effortless staking, and also ease the amount of technical knowledge and experience required for running their own node. 

They achieve this by offering an easy to use and[ intuitive staking dApp](https://staking.linkpool.io/) and also a more hands-on node as a service solution (“NaaS”).  LinkPool offers two main ways to stake using their services: regular staking, which can be done in their intuitive dApp, or Node as a Service (NaaS). The latter is a more hands-on approach for node operation, but without the need of technical understanding on how to build and manage infrastructure. 

The key points for NaaS are:

- LinkPool is aiming for NaaS to be launched at the same time of regular staking.
- NaaS will have a flat fixed price in USD, billed monthly.
- You’ll be able to pay in ETH or any ERC20.

LinkPool simply provides a brand-new node, how you manage your identity on the network and the data you provide is up to you. More information can be found in this [Medium post](https://medium.com/linkpool/announcing-node-as-a-service-2034ee42d2d9).

According to LinkPool, their on-chain contracts are now trustless, resulting in a way to safely secure the LINK tokens within a smart contract that retains ownership to the address of the staker rather than transferring ownership to the node.

This means the 3rd party provider in this case — LinkPool, are not holding your tokens at any point.

# Funding

ChainLink conducted a token distribution with 35% of the distribution going to Node Operators, 35% sold to the public, and 30% retained by the company to fund development.  

![image](https://user-images.githubusercontent.com/17677506/58267786-46324280-7d52-11e9-936f-1274cf79b2f2.png)
_[Figure 1. Chainlink Token Metrics](https://medium.com/paradigm-fund/chainlink-detailed-review-on-the-project-9dbd5e050974)_ 

**How are funds managed?**

Funds are managed by the Chainlink team.

**How is work other than software development funded?**

Work other than software development is also funded by the development fund managed by Chainlink 


## Partnerships/use cases

_IOST_
Announced: 8th May 2019
IOST's announcement: IOST x Chainlink |[ Bringing real world data on-chain for IOST Dapps](https://medium.com/iost/iost-x-chainlink-bringing-real-world-data-on-chain-for-iost-dapps-503b00512a83)
Chainlink's announcement: [Confirmed via Twitter Post](https://twitter.com/chainlink/status/1126179886631010306)

Streamr
__Announced: 29th April 2019
Streamr's announcement: [Why Streamr has integrated with Chainlink for reliable oracles](https://medium.com/streamrblog/streamr-chainlink-oracle-integration-f17ee6c5462c)
Chainlink's announcement: Confirmed via Twitter Post

_Ocean Protocol_
Announced: 28th April 2019
Ocean Protocol's announcement:[ Ocean Protocol + Chainlink Integration](https://blog.oceanprotocol.com/ocean-protocol-chainlink-integration-e7335f880ea3)
Chainlink's announcement: [Confirmed via Twitter Post](https://twitter.com/oceanprotocol/status/1122767501220356096)

_Data Sports Groups_
Announced: 21st March 2019
DSG's announcement: [DSG teams up with Chainlink to bring live sports data to smart contracts](http://datasportsgroup.com/latestnews/dsg-teams-up-with-chainlink-to-bring-live-sports-data-to-smart-contracts/)
[Chainlink's announcement: Confirmed via Twitter Post](https://twitter.com/chainlink/status/1108724011117228032)

_Synthetix_
Announced: 11th March 2019
Synthetix's announcement: [Synthetix to use Chainlink to decentralise price feeds](https://blog.synthetix.io/synthetix-and-chainlink/)
Chainlink's announcement: [Confirmed via Twitter Post](https://twitter.com/synthetix_io/status/1105355591361298432)

_Provable (Oraclize)_
Announced: 7th March 2019
Provable's announcement: [Twitter](https://twitter.com/oraclizeit/status/1103602879271706626)
Chainlink's announcement: [Confirmed via Twitter](https://twitter.com/chainlink/status/1103729595218579456)

_Celer_
Announced: 14th February 2019
Celer's Announcement: Celer + Chainlink: [Combining real-world information and layer-2 scalability](https://medium.com/celer-network/celer-chainlink-combining-real-world-information-and-layer-2-scalability-24e5d478a4aa)
Chainlink's Announcement: [Confirmed via Twitter Post](https://twitter.com/chainlink/status/1096077609761267712)

_Bodhi and Naka Chain_
Announced: 6th February 2019
Naka Chain's Announcement: [Bodhi and Naka Chain Integrate Chainlink to bring DApp development to the next stage](https://medium.com/@NakaChain/bodhi-and-naka-chain-integrate-chainlink-to-bring-dapp-development-to-the-next-stage-27fbfd1a8b75)
Chainlink's Announcement: [Confirmed via Twitter Post](https://twitter.com/chainlink/status/1093244722599153664)

_Katallassos_
Announced: 31st January 2019
Katalassos' Announcement:[ Katallassos to use Chainlink for data feeds](https://medium.com/katallassos/katallassos-to-use-chainlink-for-data-feeds-43bfda459f2b)
Chainlink's Announcement: Confirmed via Twitter Post

_STK_
Announced: 18th December 2018
STK's Announcement: STK to use Chainlink to bridge real life data with Blockchain
Chainlink's Announcement: [Confirmed via Twitter Post](https://twitter.com/chainlink/status/1091093059755016192)

_Mobilum_
Announced: 13th December 2018
Mobilum's announcement: [Mobilum to use Chainlink for Cryptocurrency Price Data Feed for Trading ](https://medium.com/@Mobilumcom/mobilum-to-use-chainlink-for-cryptocurrency-price-data-feed-for-trading-platform-906e5c91f67)Platform
Chainlink's Announcement: Confirmed via Twitter Post

_ETHA_
Announced: 7th December 2018
ETHA's Announcement: [ETHA works with Chainlink to provide decentralized oracle solution for blockchain remittances](https://medium.com/etharemit/etha-partners-with-chainlink-to-provide-decentralized-oracle-solution-for-blockchain-remittances-87c83d3da866)
Chainlink's Announcement: [Confirmed via Twitter Post](https://twitter.com/chainlink/status/1071102975903444992)

_Olympus Labs_
Announced: 29th November 2018
[Olympus Labs' Announcement: Olympus Labs and Chainlink signed a strategic partnership: Olympus labs will integrate Chainlink's decentralized oracles into financial products for reliable price feeds](https://medium.com/olympuslabsbc/olympus-labs-and-chainlink-integrate-decentralized-oracles-into-financial-products-for-reliable-17ad07bc5c80)
Chainlink's Announcement: [Confirmed via Twitter Post](https://twitter.com/chainlink/status/1068166744542449664)

_RTrade Technologies Ltd_
Announced: 29th November 2018
RTrade Technologies Ltd's Announcement: [RTrade Technologies to use Chainlink to provide oracles for high quality off-chain data storage](v)
Chainlink's Announcement: [Confirmed Via Twitter Post](https://twitter.com/chainlink/status/1068009216655405056)

_Kaiko_
Announced: 14th November 2018
Kaiko's Announcement: [Kaiko Partners with Chainlink to Bring Cryptocurrency Market Data to Smart Contracts](https://medium.com/@kaikodata/kaiko-partners-with-chainlink-to-bring-cryptocurrency-market-data-to-smart-contracts-1a2f9f428465)
Chainlink's Announcement: Rory [posted](https://www.reddit.com/r/Chainlink/comments/9x0it6/kaiko_partners_with_chainlink_to_bring/) the announcement on [/r/Chainlink](https://www.reddit.com/r/Chainlink)

_Wanchain_
Announced: 12th November 2018
Wanchain's Announcement: [Wanchain Adds Real-World Data with Chainlink Integration and Partnership](https://medium.com/wanchain-foundation/wanchain-adds-real-world-data-in-partnership-with-chainlink-a7ecf919e181)
Chainlink's Announcement: [Confirmed via Twitter Post](https://twitter.com/chainlink/status/1061984846917058562)

_Hydrogen_
Announced: 9th November 2018
Hydrogen's Announcement: [Hydrogen Partners with Chainlink](https://medium.com/@gunjmehta/hydrogen-partners-with-chainlink-fc058a3fd477)
Chainlink's Announcement: Awaiting official confirmation

_Kaleido (ConsenSys)_
Announced: 8th November
Kaleido's Announcement: [Kaleido Launches Blockchain Marketplace with Plug-and-Play Services and Solution Partnership Program](https://kaleido.io/kaleido-launches-blockchain-marketplace-with-plug-and-play-services-and-solution-partnership-program/)
Chainlink Announcement: on Rory's list of partnerships in the Official Chainlink Telegram

_bZx_
Announced: 6th November 2018
bZx's Announcement: [bZx Teams up with Chainlink](https://medium.com/bzxnetwork/bzx-teams-up-with-chainlink-5b9649e8c241)
Chainlink Announcement: [Confirmation via Twitter Post](https://twitter.com/chainlink/status/1059850058345181186)

_Town Crier (Acquired by Chainlink)_
Announced: 1st November 2018
Town Crier's Announcement:
Chainlink Announcement: Announced at Devcon4 and [confirmed via Twitter Post](https://twitter.com/chainlink/status/1058012081809747968)
[Press release issued](https://www.prnewswire.com/news-releases/chainlink-acquires-town-crier-from-the-initiative-for-cryptocurrencies-and-contracts-300741835.html) and picked up by [Forbes](https://www.forbes.com/sites/darrynpollock/2018/11/01/cornells-town-crier-acquired-by-chainlink-to-expand-decentralized-oracle-network/#7aa755912854) and [Business Insider](https://markets.businessinsider.com/news/stocks/chainlink-acquires-town-crier-from-the-initiative-for-cryptocurrencies-and-contracts-1027681652)

Morpheus.Network
Announced: 31st October 2018
Morpheus.Network Announcement: [Morpheus.Network Partners with Leading Decentralized Oracle Network Provider Chainlink for Real-World Smart Contracts](https://medium.com/morpheus-network/morpheus-network-partners-with-leading-decentralized-oracle-network-provider-chainlink-for-b6d197637ce1)
Chainlink Announcement: [Confirmation via Twitter Post](https://twitter.com/chainlink/status/1057659385835671552)

_Web3_
Announced: 22nd October 2018
Web3 Announcement: [Web3 Foundation and Chainlink Announce Collaboration](https://medium.com/web3foundation/web3-foundation-and-chainlink-announce-partnership-df55ed462a3a)
Chainlink Announcement: [Confirmation via Twitter Post](https://twitter.com/chainlink/status/1054349356722241541)

_BraveNewCoin_
__Announced: 5th September 2016 and 23rd September 2018
BraveNewCoin Announcement: [BNC launches finance data Oracles, to expand the usefulness of smart-contractsand then a tweet in September 2018](https://bravenewcoin.com/insights/bnc-launches-finance-data-oracles-to-expand-the-usefulness-of-smart-contracts)
Chainlink Announcement: [BraveNewCoin Oracle on Testnet](https://docs.chain.link/docs/bravenewcoin)

_GameDex_
Announced: 19th September 2018
GameDex Announcement: [Decentralized Oracle Service Chainlink Partners with Gamedex on Smart Contracts](https://medium.com/gamedex/decentralized-oracle-service-chainlink-partners-with-gamedex-on-smart-contracts-9b516ddd51b9)
[Chainlink Announcement: Confirmation via Twitter Post](https://twitter.com/chainlink/status/1042901451989770241)

_MARKET Protocol_
Announced: 22nd August 2018
MARKET Protocol Announcement: [Market Protocol and Chainlink Team Up to Enable Off-Chain Asset Trading on the Ethereum Network](https://medium.com/market-protocol/market-protocol-and-chainlink-team-up-to-enable-off-chain-asset-trading-on-the-ethereum-network-72c3ff4a3e1c)
Chainlink Announcement: [Confirmation](https://twitter.com/chainlink/status/1030911504353251328) via Twitter Post

_OpenLaw (ConsenSys)_
Announced: 14th August 2018
OpenLaw Announcement: [OpenLaw Teams with Chainlink to Bring Real-World Info to Smart Contracts](https://medium.com/@OpenLawOfficial/openlaw-teams-with-chainlink-to-bring-real-world-info-to-smart-contracts-4e7a3dac80a8)
Chainlink Announcement: [Confirmation via Twitter Post](https://twitter.com/chainlink/status/1030911504353251328)

_Accord Project_
Announced: 28th July 2018
Accord Project Announcement: Smart Legal Contracts and Oracles
Chainlink Announcement: Confirmation via Twitter

_ZeppelinOS_
Announced: 18th December 2017
ZeppelinOS Announcement: [ZeppelinOS Partners with Chainlink, the Market Leader is Trusted Oracles](https://medium.com/@accordhq/smart-legal-contracts-and-oracles-36d4eb538a92)
Chainlink Announcement: [Confirmation via Twitter Post (Chainlink Retweeted)](https://medium.com/@accordhq/smart-legal-contracts-and-oracles-36d4eb538a92)

_ClinTex_
Announced: July 2017
Clintex Announcement: [ClinTex Partners with Chainlink](https://medium.com/clintexcti/clintex-partners-with-chainlink-b64bc3ca8255)
Chainlink Annoucement: on Rory's list of partnerships in the Official Chainlink Telegram

## Significant Investors 

1. 8 Decimal Capital - San Francisco, CA
3. Anmi OECD - China
5. BitPride Fund - Russia
7. BlockFront Capital - Romania
9. Carnaby Capital - United Kingdom
11. Cipher Ventures - Singapore
13. Consensus Capital - China
15. Fundamental Labs - China
17. Interchain Ventures - Singapore
19. Nirvana Capital - China
21. NueValue Capital - Singapore
23. RocketFuel - United States
