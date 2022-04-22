'reach 0.1';

const Player = {
    getHand: Fun([], UInt),
    seeOutcome: Fun([UInt], Null),
};

export const main = Reach.App(() =>{
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
    Alice.only(() =>{
        
    }) 

});