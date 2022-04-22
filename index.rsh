'reach 0.1';

const Player = {
    getHand: Fun([], UInt),
    seeOutcome: Fun([UInt], Null),
};

export const main = Reach.App(() => {
    const Alice = Participant('Alice', {
        // Specify Alice's interact interface here
        ...Player,
    });
    const Bob = Participant('Bob', {
        // Specify Bob's interact interface here
        ...Player,
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

    Bob.only(() => {
        interact.acceptWager(wager);
        const handBob = declassify(interact.getHand());
    });
    Bob.publish(handBob)
        .pay(wager);

    const outcome = (handAlice + (4 - handBob)) % 3;
    commit();

    each([Alice, Bob], () => {
        interact.seeOutcome(outcome);
    });
});