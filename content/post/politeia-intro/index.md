---
title: 'Governance of the Decred project subsidy through Politeia'
authors:
- richard
tags:
- Politeia
- Decred
- Introduction
- Funding
- Governance
categories:
- Education
date: "2018-03-05T00:00:00Z"
lastmod: "208-03-05T00:00:00Z"
featured: false
draft: false

# Featured image
# To use, add an image named `featured.jpg/png` to your page's folder.
# Placement options: 1 = Full column width, 2 = Out-set, 3 = Screen-width
# Focal point options: Smart, Center, TopLeft, Top, TopRight, Left, Right, BottomLeft, Bottom, BottomRight
image:
  placement: 2
  caption: 'Image credit: [**Unsplash**](https://unsplash.com/photos/CpkOjOcXdUY)'
  focal_point: ""
  preview_only: false

# Projects (optional).
#   Associate this post with one or more of your projects.
#   Simply enter your project's folder or file name without extension.
#   E.g. `projects = ["internal-project"]` references `content/project/deep-learning/index.md`.
#   Otherwise, set `projects = []`.
projects: []
---



### Governance of the Decred project subsidy through Politeia

I’ve recently taken an interest in cryptocurrency projects that are attempting to decentralize various aspects of their governance. [Decred](https://www.decred.org/) is interesting in this regard because it aims to decentralize decision-making about both:

- the adoption of consensus changes that require hard forks
- the spending of a project subsidy (10% of the block reward)

### **Decred Governance Basics**

Decred combines Proof of Work (PoW, 60% of block reward) with Proof of Stake (PoS: 30% of block reward) to secure the network, with the remaining 10% of the block reward going into a project subsidy wallet to fund development of the project.

Stakeholders are key to Decred’s governance. Decred stakeholders purchase tickets by locking their DCR until those tickets are selected to vote, when one buys a ticket one indicates how it will vote on any open issues. Tickets are selected pseudo-randomly, the interval until a ticket is selected follows a Poisson distribution with mean 28 days. Voters receive a reward when their ticket votes, if a ticket hasn’t voted after about 4 months it can be revoked and the DCR returned to its owner. The locking requirement is intended to ensure that stakeholders vote in the long-term interests of the project.

Decred stakeholders, i.e. those who own active tickets, weighted by the number of tickets they own, [already vote to accept or reject changes to consensus](https://docs.decred.org/getting-started/user-guides/agenda-voting/). This is interesting, but so far has only been used to adopt changes which were not contentious.

I’m not a software developer, cryptographer or game theoretician. While I appreciate that control over changes to consensus rules is fundamental to cryptocurrencies - that ground has been well covered by people who are more knowledgeable on the subject than me.

### Decred’s project subsidy

Looking at a community's decision-making with regard to deploying resources or spending money is much more within my wheelhouse. I’m interested in projects like these specifically, because it’s easier for me to understand a community’s approach to decision-making and evaluate its effectiveness in the context of spending money. Deciding how to allocate resources is also important for projects that aim to be autonomous, because it typically costs money to develop software.

10% of the Decred block reward goes into a project subsidy account, and the project aims to administer this budget through a Decentralized Autonomous Entity (DAE) controlled by stakeholders. [This account currently holds around 460k DCR](http://explorer.dcrdata.org/address/Dcur2mcGjmENx4DhNqDctW5wJCVyT3Qeqkx) (or about $35 million), and these funds will be at the disposal of stakeholders through Politeia.

### **My background with Decred**

I started following a number of projects with development funds and ambitions to administer these in a decentralized fashion in October 2017. One of these projects was Decred. Stakeholder voting to decide how the project subsidy would be spent sounded interesting, but I couldn’t find a lot of detail about how it would work. I started hanging out on the Decred Slack and [subreddit](https://www.reddit.com/r/decred/), looking for more details, thinking that the details were under wraps and would emerge soon.

Aside from some fundamentals that all the project’s major contributors obviously agree on, my impression is that a lot of the detail about how this would operate and what it would do seems to have been worked out on the fly, mostly in public Slack channels. This impression is based on some misunderstandings I witnessed and how these were resolved. That’s pretty cool, I like the idea of incremental steps towards decentralized administration of the project subsidy that I can follow along with and participate in discussions around.

In recent discussions around the [2018 roadmap](https://blog.decred.org/2018/02/28/2018-Decred-Roadmap/), it was suggested that producing detailed descriptions and updates on development was a role that nobody in particular had responsibility for, and that members of the community were welcome to take it on. Although my plan was to study Politeia in action, it seems worthwhile to compile my notes about how it will work from a participant’s perspective now - so that interested parties can have a better sense of how it will work, any misconceptions (including my own) can be brought to light, and the community can have more effective discussion on that basis.

The following is my understanding of how Decred will approach decentralizing governance of the project subsidy. It is based on a couple of Decred blog posts, some reddit posts, and discussions in the #politeia and #general channels in Slack (and bridged messaging platforms) over the last four months.

### **Politeia**

The version of [Politeia which launched in November](https://blog.decred.org/2017/10/25/Politeia/) is the foundation upon which Decred proposal voting will be built. Politeia has been summarised as “git plus timestamping”, a post comprising text (with markup) and (png) images can be submitted and Politeia anchors this to the DCR blockchain so that one can know with confidence that it was created or edited at a particular time. Politeia generates censorship tokens for submissions, if a submission is removed its submitter can demonstrate that they submitted it and that it was censored using the token.

Politeia launched with a contest to develop other use-cases for the platform beyond Decred governance, entrants were presented and the winners[ announced in February 2018](https://btcmanager.com/decreds-politeia-challenge-overview-winners/).

### **Politeia for proposal voting (Pi)**

The latest test version of Politeia for proposal voting can be found at: https://test-proposals.decred.org/

I see the abbreviation Pi used for Politeia a lot, and I will use that to refer to “Politeia for proposal voting” and the website that will facilitate this.

Pi proposals and discussions will be publicly viewable, but there will be a registration fee (currently set at 0.1 DCR, about $7.50 at today’s prices) to participate (commenting and up/down voting). There will also be a fee to submit proposals. This fee is intended to discourage spam, and will be set high enough to achieve this but without creating a significant barrier to people with genuine proposals to submit.

When proposals are submitted to Pi they will have an “unvetted” status and won’t be immediately publicly visible. A panel of reviewers will vet each proposal to ensure that it conforms to a set of minimum requirements (to be determined). When a proposal passes this vetting its status will changed to “vetted” and it will appear publicly on Pi. When a proposal is rejected it will not appear publicly on Pi, its submitter can use the censorship token to prove that they submitted a proposal which was censored.

Pi borrows features from reddit. Up/down voting is applied to proposals, with up/down votes cast through the Pi web app being used to determine proposals’ visibility (order of display). This up/down voting is also applied to comments on proposals. However, these up/down votes are not binding, they are not Pi’s method of decision-making.

Decisions will be made through voting that is bound to active Decred tickets, I will refer to this as approve/disapprove voting. For approve/disapprove voting, it is the number of tickets voting that matters rather than individual users/wallets/accounts — a stakeholder with 1 ticket has 1 vote, a stakeholder with 100 tickets has 100 votes. This follows the same principle as Decred’s voting on consensus rules changes (or “hard forks”), decision-making influence is tied to the amount of Decred an individual is willing to lock up in tickets. This is intended to align incentives, the act of locking up DCR is designed to ensure that participants in governance have “skin in the game”, and are incentivized to vote in the project’s best interest lest their locked DCR decreases in value.

Approve/disapprove votes must therefore be signed by a wallet with active tickets to count (and so the system knows how much weight they count for). Pi proposals will have a window where they are active for voting (this window is I think set to be one week), during this window stakeholders can use their active tickets to cast approve/disapprove votes, at the end of the window a decision is made based on a tally of those votes.

A list of active proposals will be shown in Decrediton (Decred’s GUI wallet) and stakeholders will be able to vote on these directly from their wallet. Registration and activity on Pi will not be a requirement to participate in approve/disapprove voting, and ticket-holders can do this directly through their wallet (Decrediton or the command-line dcrwallet).

There has however been discussion of how to also bridge approve/disapprove voting on the Pi web app with wallets that can sign votes. The latest proposal is to allow “provisional” voting on Pi so that a user can conveniently indicate their approve/disapprove votes on the platform — then export this as JSON which can be imported into the wallet to make the actual binding approve/disapprove votes in a batch.

The exact criteria for approval are to my knowledge yet to be determined, this will likely consider the net approve/disapprove score and also the total number of votes cast — such that a proposal can only pass if it receives votes from a certain proportion of active tickets and a certain proportion of those votes are to approve the proposal.

The initial release of Pi will not attempt to autonomously decentralize the administration and payment of successful proposals. In the initial release, successful proposals can be thought of as instructions to the (human) holders of the keys to the project subsidy wallet. Direct decentralized control of the disbursement of funds through Pi is planned for later in the project.

Pi proposals themselves can therefore be quite free-form, they are essentially free-text (and optionally images). A proposal can describe its own set of deliverables or milestones, and the manner/timing in which progress is assessed and payments made. Stakeholders will bear this in mind when they vote, and it will be up to the holders of the keys to the project subsidy wallet to administer the payments to successful proposals on this basis.

### **How will Pi be used?**

From discussions in the stakeholder community, it seems that the preference will be for proposals that are funded in arrears, i.e. a successful proposal must be followed by progress in line with its deliverables before payments will be made.

It is also likely that Pi will see a number of large ongoing proposals that fund big chunks of work through existing teams (e.g. the work of Company 0 on core functionality, the work of the marketing team) without stakeholder micro-management of the work of those teams. Proposals like these will set budgets for large chunks of work, leaving it up to the team to work out the details. This is intended to keep the administration overhead low, and decision-making about certain aspects high-level, while stakeholders retain the ultimate control to reduce the funding of or de-fund a team.

External parties who are not currently contractors for Decred may also come with proposals to fund a certain package of work, with a requested budget and a plan for how that would be deployed. Discussions have indicated that other more contentious issues (like whether to pay a fee for an exchange listing, whether to re-brand) could also be resolved through Pi proposal voting.

While payments will initially be made manually by those who control the keys to the project subsidy, the intention is to move towards full decentralized control over this aspect too. So, the way that Pi proposals are structured and tracked will be monitored, with a view to building out the autonomous administration to serve common patterns that have been found to work.

From discussions it seems likely that budget requests and payments will be denominated primarily in a national currency like USD, to avoid some of the issues that come with budgeting in the more volatile DCR.

------

The Decred team are taking a pragmatic approach to decentralizing control of the project subsidy and the project more broadly. This approach involves taking one step at a time towards decentralized autonomy, seeing what works and what causes problems and finding incremental advances without the stakes being too high. Right now the project subsidy is being administered manually (and sparingly), under the direct control of the project’s leaders. My impression is that they’re serious about relinquishing that control, that engineering themselves out of having this control is what makes the project interesting for them

The launch of proposal voting on Politeia will undoubtedly be interesting. This will launch not as a complete and definitive system but as a set of tools which the community can use to begin the process of figuring out how decentralized governance of the project should work. Through submissions, comments and up/down votes on the Pi website we will hear what the individuals who are invested enough in the project to pay the registration fee and contribute think. The Pi web app is similar to a subreddit, which most other projects already use, but the registration fee will impose a relatively small barrier to entry (0.1 DCR or about $7.50 at today’s prices) which should diminish the effectiveness of astroturfing and sybil attacks without preventing people with a genuine interest in the project from participating.

Through approval voting tied to tickets we will see the will of the Decred stakeholders expressed, weighted by the quantity of DCR they hold and are willing to stake in tickets. It is the Decred stakeholders who exercise the greatest control over the project, and the decisions they make through approval voting will give a good indication of how the project is likely to develop going forward.

Excitingly, this whole process will be open and transparent, allowing anyone with an interest in the governance of cryptocurrency projects to study Decred’s approach and observe how it plays out. I’ll be watching this with interest and writing about it, as well as continuing with my analysis of other projects.