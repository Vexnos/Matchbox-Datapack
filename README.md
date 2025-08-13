# Matchbox Minecraft Mystery
## What is Matchbox?
This datapack features the Matchbox Mystery game created by *[M4TCH8OX](https://www.youtube.com/@M4TCH80X)*

The rules can be found *[here](https://www.youtube.com/watch?v=dmwAJjVQRNc)* on their youtube channel along with several other videos with the actual game being played.

**DISCLAIMER**: I do not own the ideas for this game, only the code inside the datapack was created from scratch with some exceptions (listed below).

## Installation Instructions (1.21.1)
1. Download the Datapack and place inside the `datapacks` folder in your world.
2. Install [Fabric](https://fabricmc.net/) and [Carpet Mod](https://github.com/gnembon/fabric-carpet) for minecraft and load the world before step 3.
3. Take the `vote.sc` scarpet script and place inside the `scripts` folder in your world.
4. Run `/function matchbox:game/maintenance/spawnlocations` (You will need to tweak the coordinates of these spawn locations inside the `spawnlocations.mcfunction` file)
5. Run `/function matchbox:game/start` to start the game. `/function matchbox:game/reset` will end the game.
6. [Optional] if you wish to uninstall this datapack, run `/function matchbox:uninstall` (do not run `/reload` yet), then delete the datapack from the `datapacks` folder. Remove the scarpet script from the `scripts` folder. Then run `/reload` to complete the process.

## Credits and Attribution
* *[M4TCH8OX](https://www.youtube.com/@M4TCH80X)* for creating this epic game.
* This datapack uses some code from the *[guimaker](https://github.com/officialbarden/guimaker)* datapack created by *[officialbarden](https://github.com/officialbarden)*. Without their efforts, this would not have been possible.
* *[Mathmagician8191](https://github.com/Mathmagician8191)* was highly influential in developing the voting mechanisms, other mechanics and bug testing. Without their efforts, this would not have been possible.