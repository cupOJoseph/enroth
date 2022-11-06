# Enroth

Experiment for an onchain strategy explorer simulation in solidity, inspired by [dark forest](https://zkga.me/) and [Heroes2](https://en.wikipedia.org/wiki/Heroes_of_Might_and_Magic_II).

The goal of this is repo is really just to explain a concept of generative landscapes with RPG qualities that use onchain mechanisms.

<img width="645" alt="interpreter" src="https://user-images.githubusercontent.com/9449596/200182552-cf5387a6-20a6-4d1f-875b-3d1a62dd4c53.png">
(Image from Heroes2)

## How it works

The world is an arbitrary square grid. There are different types of resources that randomly generate and can appear as you explore the grid. Storage is expensive, but read-only logic is cheap. No map is stored onchain, but rather the generative landscape is explored using an (X,Y) plain that reveals different types of resources.

The constuctor for the main contract library takes a seed hash. Change this to generate a different continent every time.

Icon pack by Shikashi:
https://cheekyinkling.itch.io/shikashis-fantasy-icons-pack

| Item         | IPFS                                           | Index |
| ------------ | ---------------------------------------------- | ----- |
| Gold         | QmRkhkX4uFycLzdinFzS1jLL6nsKQt3uqSXWJ6EDuvPeDT | 1     |
| Apples       | QmcB2zV44HVcnEjfdJMsoM1dbN89SYE4QSY4tpewmxK9Y9 | 2     |
| Wood         | QmeLAVCEXBjaBKdKqKYZvuxxyQ2FmrChRCbBZAPkXdGXWB | 3     |
| Empty Square | QmZGqm9UrsQzTmus8HSipN5v1kaTXK6avngGMshevZC3Pu | 0     |

## Trivial Additions

- Make the resources "claimable" as ERC1155s
- Create a player-character that is always at a certain x,y position and move-able
- allow claiming the resources only when the player is within 1 x,y of any particular location
