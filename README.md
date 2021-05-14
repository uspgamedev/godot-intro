
# Introduction to Godot

This is a very simple tower defense game. We use it to show the basics of
Godot.

## Suggested steps

### 0) Download and "install" Godot

Use either Steam (auto-updates) or download directly from official website
(simply unzip and run it).

### 1) New project

Choose GLES 2 so we can export for WEB later on. For better graphics, use
GLES 3 instead.

If you are using git, remember to set up a gitignore!
[gitignore.io](https://gitignore.io) auto-generates gitignore files for Godot
;)

### 2) Add monster

**Step 1**. Understand the interface. Adjust layout as preferred.

**Step 2**. Change to 2D view and choose "2D Scene" in Scene tab

**Step 3**. Copy sprite sheet file into project folder then drag and drop it
into the viewport. Rename root node to "World". Hit F6 to check it out (do this
after every possible step).

**Step 4**. Edit sprite node in Inspector tab so that only the first frame
shows. Rename monster node to "Monster".

### 3) Project settings and exporting

**Step 1**. Set the main scene in Application -> Run. This tells Godot that
this scen is the one to start the game with when you export it.

**Step 2**. Change background color in Rendering -> Environment.

**Step 3**. Enable pixel snap in Rendering -> 2D.

**Step 4**. Export to your platform. You may need to download the tempalte,
which takes a while!

**Step 5**. Add a `.gdignore` file to build folder. Also update you gitignore
if relevant.

### 4) Small adjustments

**Step 1**. Scale root 4-fold so the sprite becomes more visible.

**Step 2**. Fix blurry image by selecting the spritesheet and disabling the
linear filter in the Import tab.

### 5) Make monster move

**Step 1**. Add script to monster node.

**Step 2**. Add a `speed` variable.

**Step 3**. Update position by adding speed times delta.

**Step 4**. Export `speed` variable for some Godot awesomeness.

WARNING: if you are following these steps to make your own game, be aware that
this is NOT the best way to make a moving character! See section 11 for more
information.

### 6) Add more monsters

DO NOT copy+paste monsters. Bad idea.

**Step 1**. Save monster sub-tree as a separate scene. Do this by
right-clicking the node.

**Step 2**. Open monster scene and fix its position to (0, 0).

**Step 3**. Instance scene multiple times in World scene.

**Step 4**. Organize project files.

### 7) Animation

**Step 1**. Add AnimationPlayer node to Monster and select it.

**Step 2**. In the Animation panel, create a new "chomping" animation.

**Step 3**. Resize animation to 0.4 seconds and select timestamp 0.0s.

**Step 4**. Select Monster node and click on the key icong besides the
Animation -> Frame attribute.

**Step 5**. Select timestamp 0.2 and do the same for frame 1.

**Step 6**. Make the animation loop and play it from the Monster script.

### 8) Add tower

**Step 1**. Create new scene with a Sprite node as root.

**Step 2**. Set crystal sprite and adjust its offset.

**Step 3**. Create some instances in World scene.

### 9) Make monster and tower collide

**Step 1**. Change Monster's root node to a KinematicBody2D and fix its script
by extending from the right type and using `move_and_collide()` in the
`_physics_process()` method (change method).

**Step 2**. Give the Monster a circular shape.

**Step 3**. Fix the Crystal scene as well but use a StaticBody2D instead.

**Step 4**. Give the Crystal a capsule or rectangle shape.

**Step 5**. For a cooler effect, change the World node to a YSort.

### 10) Make bullets that kill monsters

**Step 1**. Create new secne with KinematicBody2D root. Add sprite and shape.
Just in case, test it by placing one in the World.

**Step 2**. The collision is wrong. Add a Area2D node to Bullet scene and give
it the Bullet's shape. Time to use signals!

**Step 3**. Connect the `body_entered` signal to the Bullet's script. Make
it check for a Monster and destroy both (try `free()` then `queue_free()`).

### 11) Make tower shoot bullets

**Step 1**. Add Timer node to Crystal scene and tick "autostart" but leave
"oneshot" unticked.

**Step 2**. Connect `timeout` signal to Crystal script.

**Step 3**. Add exported variable of type `PackedScene` and use it to tell the
Crystal what scene the Bullet is in.

**Step 4**. In the function connect from Step 2, make it instantiate the Bullet
and add it as a child node of the World.

This last steps is simpler to do using `get_parent()` BUT THAT IS A BAD WAY TO
DO IT.

**Homework**. [Do this instead](https://docs.godotengine.org/en/stable/tutorials/misc/instancing_with_signals.html)
Ignore the `preload` (keep using exported variable).

### 12) Make bullets die after some time

**Single step**. Add Timer to Bullet scene, connect timeout and make it destroy
itself

You can pause the game and inspect the scene tree using the "Remote" sub-tab
in the Scene tab.

### 13) Make monsters spawn automatically

**Single step**. Create Spawner scene with Position2D root node, give it a
Timer and connect to a function that add Monster scenes to the World (use an
exported variable to provide the Monster's scene).

**Homework**. Generalize the homework from (11) so that you can also spawn
monsters using signals.

### 14) Place Crystals with mouse

**Step 1**. Go to Project Settings -> Input Map tab.

**Step 2**. Add action "click" and assign the left mouse button to it.

**Step 3**. Give the World a script. Export a variable with the Crystal scene
and start a `_unhandled_input()` function.

**Step 4**. Check for the "click" input event and use its position to spawn
Crystal scenes.

### 15) Add BGM and SFX

**Step 1**. Go to Audio tab in the lower panel. Create 2 audio buses, BGM and
SFX, and leave both going into Master. Lower BGM volume to -20db and SFX to
-10db.

**Step 2**. Add AudioStreamPlayer node to World scene and give it the
"hold the line\_1.ogg" theme. Set it to "autoplay" and place it into the BGM bus.

**Step 3**. Add AudioStreamPlayer2D node to Crystal scene and name it SpawnSFX.
Give it the "Cannon.wav" sample, place it under SFX bus and make it player
once at `_ready()`.

**Step 4**. Repeart for "Shoot Melon.wav" but make it play when the Crystal
shoots.

**Step 5**. Make a ExposionSFX scene using AudioStreamPlayer2D and make the
Bullet spawn it upon hitting a monster. The scene should autoplay and connect
its `finished` signal to its own `queue_free` method (requires "advenced
mode"). You might want to further lower the volume of this one.

## Things to study that we did not cover!

1. Inherited scenes
2. Connecting signals from code
3. Switching scenes
4. Tweens!!!!!
5. Particles!!!!!!!!!
6. Input events and the different input callbacks
7. Using NodePaths
8. Pausing the game
9. Control nodes

## Suggested exercises

1. Inherit scene to make new towers, monsters and bullets
2. Choose tower to create
3. Add currency
4. Add lose condition
5. Add win condition (if any - why not just keep it survival?)

