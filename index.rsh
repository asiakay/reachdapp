'reach 0.1';

const [ isHand, ROCK, PAPER, SCISSORS ] = makeEnum(3);
const [ isOutcome, B_WINS, DRAW, A_WINS ] = makeEnum(3);

const winner = (handAlice, handBob) => 
    ((handAlice + (4 - handBob)) % 3);

assert(winner(ROCK, PAPER) == B_WINS);
assert(winner(PAPER, ROCK) == A_WINS);
assert(winner(ROCK, ROCK) == DRAW);

forall(UInt, handAlice => 
    forall(UInt, handBob =>
        assert(isOutcome(winner(handAlice, handBob)))));

forall(UInt, (hand) => 
assert(winner(hand, hand) == DRAW));

const Player = {
    ...hasRandom,
    getHand: Fun([], UInt),
    seeOutcome: Fun([UInt], Null),
};

export const main = Reach.App(() => {
    const Alice = Participant('Alice', {
        // Specify Alice's interact interface here
        ...Player,
        wager: UInt,
    });
    const Bob = Participant('Bob', {
        // Specify Bob's interact interface here
        ...Player,
        acceptWager: Fun([UInt], Null),
    });
    init();
    // write the program here
    Alice.only(() => {
        const wager = declassify(interact.wager);
        const handAlice = declassify(interact.getHand());
    });

    Alice.publish(wager, handAlice)
        .pay(wager);
    commit(); 

    unknowable(Bob, Alice(handAlice));

    Bob.only(() => {
        interact.acceptWager(wager);
        const handBob = declassify(interact.getHand());
    });

    Bob.publish(handBob)
        .pay(wager);

    const outcome = (handAlice + (4 - handBob)) % 3;
    

    const [forAlice, forBob] = 
        outcome == 2 ? [ 2, 0 ] : 
        outcome == 0 ? [ 0, 2 ] :
        /* tie */ [ 1, 1 ];
    transfer(forAlice * wager).to(Alice);
    transfer(forBob * wager).to(Bob);
    commit();

    each([Alice, Bob], () => {
        interact.seeOutcome(outcome);
    });
});