import { loadStdlib } from '@reach-sh/stdlib';
import * as backend from './build/index.main.mjs';
const stdlib = loadStdlib();

const startingBalance = stdlib.parseCurrency(100);
const accAlice = await stdlib.newTestAccount(startingBalance);
const accBob = await stdlib.newTestAccount(startingBalance);

const ctcAlice = accAlice.contract(backend);
const ctcBob = accBob.contract(backend, ctcAlice.getInfo());

const HAND = ['Rock', 'Paper', 'Scissors'];
const OUTCOME = ['Bob wins', 'Draw', 'Alice wins'];
const Player = (Who) => ({
    getHand: () => {
        const hand = Math.floor(Math.random()* 3);
        console.log(`${Who} played ${HAND[hand]}`);
        return hand;
    },
    seeOutcome: (outcome) => {
        console.log(`${Who} played ${HAND[hand]}`);
    },
});

await Promise.all([
    ctcAlice.p.Alice({
        ...Player('Alice'),
    }),
    ctcBob.p.Bob({
        ...Player('Bob'),
    }),
]);


await Promise.all([
    ctcAlice.p.Alice({
        // implement Alice's interact object here
    }),
    ctcBob.p.Bob({
        // implement Bob's interact object here
    }),
]);
