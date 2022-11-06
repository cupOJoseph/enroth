# Enroth

Experiment for an onchain strategy explorer simulation in solidity, inspired by [dark forest](https://zkga.me/) and [Heroes2](https://en.wikipedia.org/wiki/Heroes_of_Might_and_Magic_II).

The goal of this is repo is really just to explain a concept of generative landscapes with RPG qualities that use onchain mechanisms.

![grid of pixels showing randomly generated resources on the plain](https://user-images.githubusercontent.com/9449596/200186506-351e7acf-693d-4484-9638-516fec7e074a.png)


## How it works

The world is an arbitrary square grid. There are different types of resources that randomly generate and can appear as you explore the grid. Storage is expensive, but read-only logic is cheap. No map is stored onchain, but rather the generative landscape is explored using an (X,Y) plain that reveals different types of resources.

The constuctor for the main contract library takes a seed hash. Change this to generate a different continent every time.

Icon pack by Shikashi:
https://cheekyinkling.itch.io/shikashis-fantasy-icons-pack

![wood](https://user-images.githubusercontent.com/9449596/200186263-b59fccbb-5343-474c-9cd4-545752109468.png)
![gold](https://user-images.githubusercontent.com/9449596/200186264-8710e47a-2c0c-435f-bbb0-c8fc633d8dd0.png)
![apples](https://user-images.githubusercontent.com/9449596/200186265-188ca66d-c123-481b-a182-f7599e1471a3.png)
![grass](https://user-images.githubusercontent.com/9449596/200186266-2d4ba1a4-68f0-4741-be18-6ac53266c9fd.png)

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
