
# Introduction to Godot

This is a very simple tower defense game. We use it to show the basics of
Godot.

## Suggested steps

### 0. Download and "install" Godot

Use either Steam (auto-updates) or download directly from official website
(simply unzip and run it).

### 1. New project

Choose GLES 2 so we can export for WEB later on. For better graphics, use
GLES 3 instead.

If you are using git, remember to set up a gitignore!
[gitignore.io](https://gitignore.io) auto-generates gitignore files for Godot
;)

### 2. Add monster

**Step 1**. Understand the interface. Adjust layout as preferred.

**Step 2**. Change to 2D view and choose "2D Scene" in Scene tab

**Step 3**. Copy sprite sheet file into project folder then drag and drop it
into the viewport. Rename root node to "World". Hit F6 to check it out (do this
after every possible step).

**Step 4**. Edit sprite node in Inspector tab so that only the first frame
shows. Rename monster node to "Monster".

### 3. Project settings and exporting

**Step 1**. Set the main scene in Application -> Run. This tells Godot that
this scen is the one to start the game with when you export it.

**Step 2**. Change background color in Rendering -> Environment.

**Step 3**. Enable pixel snap in Rendering -> 2D.

**Step 4**. Export to your platform. You may need to download the tempalte,
which takes a while!

**Step 5**. Add a `.gdignore` file to build folder. Also update you gitignore
if relevant.

### 4. Small adjustments

**Step 1**. Scale root 4-fold so the sprite becomes more visible.

**Step 2**. Fix blurry image by selecting the spritesheet and disabling the
linear filter in the Import tab.

### 5. Make monster move

**Step 1**. Add script to monster node.

**Step 2**. Add a `speed` variable.

**Step 3**. Update position by adding speed times delta.

WARNING: if you are following these steps to make your own game, be aware that
this is NOT the best way to make a moving character! See section 11 for more
information.

7. Add more monsters
8. Branch monster into separate scene
9. Add animation
10. Add tower
11. Make monster and tower collide
12. Add bullet
13. Make tower shoot bullets
14. Make bullets kill monsters
15. Make bullets die after some time
15. Add monster spawner
16. Place towers with mouse (with input map)
17. Add BGM
18. Export game

## Suggested exercises

1. Inherit scene to make new towers, monsters and bullets
2. Choose tower to create
3. Add SFX
4. Add currency
5. Add lose condition
6. Add win condition (if any - why not just keep it survival?)

