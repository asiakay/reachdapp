# reachdapp

When you write a DApp using Reach, you ... write a program in Reach that generates a smart contract & a backend and a front-end in JavaScript, then use Reach to test and deploy it."
https://docs.reach.sh/tut/rps/#p_45

"Consensus networks in general, and Reach specifically, guarantee that all participants agree on the outcome of their decentralized computation." 
https://docs.reach.sh/tut/rps/#p_207

"Reach programs allow interaction with a user interface...
1) by allowing the frontends to provide values directly to the Reach application, and 2) by allowing the Reach program to callback to the frontend via the interact object."
https://docs.reach.sh/tut/rps/#p_91

"Participants in a Reach application share information with each other and find out what others have shared when... the Reach primitive publish allows a participant to share information with all other participants, which happens automatically without the other parties needing to do anything special."
https://docs.reach.sh/tut/rps/#p_91

"Reach programs manage token funds...
through the `pay` primitive that can be added to a `publish` primitive to send funds to the Reach program, which can then use the transfer primitive to send funds back to participants, and other addresses."
https://docs.reach.sh/tut/rps/#p_135

"In a decentralized application when one participant refuses to take the next step of the program, for example, if Alice refuses to share her hand with Bob in a game of ‘Rock, Paper, Scissors’... if the developer used Reach, the default is the program hangs forever waiting for Alice to provide the value. Or the developer could include a timeout block to punish Alice and the allow the program to proceed as-if Bob were the winner because Reach empowers programmers to design the application with the business logic they want" [source](https://docs.reach.sh/tut/rps/#p_248)


[Reach verification engine](https://docs.reach.sh/guide/assert/#guide-assert) 

[How does Reach and the symbolic execution engine work?](https://docs.reach.sh/guide/reach/#guide-reach)

[Cryptographic commitment scheme](https://en.wikipedia.org/wiki/Commitment_scheme) included in Reach's standard library with [`makeCommitment`](https://docs.reach.sh/tut/rps/#p_187) as to not reveal each participant's hand prematurely

[What is non-participation and how to protect against it with Reach?](https://docs.reach.sh/guide/timeout/#guide-timeout) 

"Non-participation refers to the act of one party ceasing to continue playing their role in an application." [source](https://docs.reach.sh/tut/rps/#p_216)

"In Reach, non-participation is handled through a "timeout" mechanism whereby each consensus transfer can be paired with a step that occurs for all participants if the originator of the consensus transfer fails to make the required publication before a particular network time." [source](https://docs.reach.sh/tut/rps/#p_221)

[Guide to loops on Reach](https://docs.reach.sh/guide/loop-invs/#guide-loop-invs)

Methods 
- `informTimout`
