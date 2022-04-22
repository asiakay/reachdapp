# reachdapp

When you write a DApp using Reach, you ... write a program in Reach that generates a smart contract & a backend and a front-end in JavaScript, then use Reach to test and deploy it."

https://docs.reach.sh/tut/rps/#tut-2


"Consensus networks in general, and Reach specifically, guarantee that all participants agree on the outcome of their decentralized computation." 
https://docs.reach.sh/tut/rps/#tut-2

"Reach programs allow interaction with a user interface...
1) by allowing the frontends to provide values directly to the Reach application, and 2) by allowing the Reach program to callback to the frontend via the interact object."
https://docs.reach.sh/tut/rps/#tut-2

"Participants in a Reach application share information with each other and find out what others have shared when... the Reach primitive publish allows a participant to share information with all other participants, which happens automatically without the other parties needing to do anything special."
https://docs.reach.sh/tut/rps/#tut-2


Steps: 
- Indicate that it is a Reach program
- Define the main export from the program 
- Identify participants in the application
- Mark the deployment of the program 
- Import the Reach standard library loader
- Import the backend 
- Load the standard library dynamically based on the REACH_CONNECTOR_MODE environment variable.
- Define quantity of network tokens as the starting balance for each test account.
- Create test accounts with initial endowments for participants
- Have participants each deploy the application 
- Initialize backend for each participant 
- Wait for the backends to complete 
- Define participants interact interface to be shared between the players 
- Define a raise to hold the meanings of the hand and outcomes 
- Define constructor for the player implementation 
- Implement get hand and see outcome methods
- Instantiate each implementation for both participants 
