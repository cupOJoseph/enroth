# Enroth

Experiment for an onchain strategy explorer simulation in solidity, inspired by [dark forest](https://zkga.me/) and [Heroes2](https://en.wikipedia.org/wiki/Heroes_of_Might_and_Magic_II).

The goal of this is repo is really just to explain a concept of generative landscapes with RPG qualities that use onchain mechanisms.

Named after the region in the game Heroes2

<img width="645" alt="interpreter" src="https://user-images.githubusercontent.com/9449596/200182552-cf5387a6-20a6-4d1f-875b-3d1a62dd4c53.png">

## How it works

The world is an arbitrary square grid. There are different types of resources that randomly generate and can appear as you explore the grid.

The constuctor for the main contract library takes a seed hash. Change this to generate a different continent every time.

Icon pack by Shikashi:
https://cheekyinkling.itch.io/shikashis-fantasy-icons-pack

| Item         | IPFS     |
| ------------ | -------- |
| Juicy Apples | 1.99     |
| Bananas      | **1.89** |
