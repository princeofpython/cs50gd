<div class="container-lg px-3 my-3 markdown-body">

# Assignment 4: “Super Mario Bros., The Key and Lock Update”

## Objectives

*   Read and understand all of the Super Mario Bros. source code from Lecture 4.
*   Program it such that when the player is dropped into the level, they’re always done so above solid ground.
*   In `LevelMaker.lua`, generate a random-colored key and lock block (taken from `keys_and_locks.png` in the `graphics` folder of the distro). The key should unlock the block when the player collides with it, triggering the block to disappear.
*   Once the lock has disappeared, trigger a goal post to spawn at the end of the level. Goal posts can be found in `flags.png`; feel free to use whichever one you’d like! Note that the flag and the pole are separated, so you’ll have to spawn a `GameObject` for each segment of the flag and one for the flag itself.
*   When the player touches this goal post, we should regenerate the level, spawn the player at the beginning of it again (this can all be done via just reloading `PlayState`), and make it a little longer than it was before. You’ll need to introduce `params` to the `PlayState:enter` function that keeps track of the current level and persists the player’s score for this to work properly.

## Getting Started

Download the distro code for your game from [https://cdn.cs50.net/games/2019/x/assignments/4/assignment4.zip](https://cdn.cs50.net/games/2019/x/assignments/4/assignment4.zip) and unzip `assignment4.zip`, which should yield a directory called `assignment4`.

Then, in a terminal window (located in `/Applications/Utilities` on Mac or by typing `cmd` in the Windows task bar), move to the directory where you extracted `assignment4` (recall that the `cd` command can change your current directory), and run

<div class="highlighter-rouge">

<div class="highlight">

    cd assignment4

</div>

</div>

## It’s-a Key!

Welcome to your fifth assignment! So far, we have a fair foundation for a platforming game present in the distro,

Your goals this assignment:

*   _Program it such that when the player is dropped into the level, they’re always done so above solid ground._ Just like we generate the level column by column (as can be seen in `LevelMaker.lua`), we can check the game’s map column by column and simply ensure that the player isn’t placed above a column that just spawned a chasm by looking at all of the tiles along the Y-axis, going from left to right, until we’ve come across a column where we encounter a solid tile (as by checking whether the id is equal to `TILE_ID_GROUND`).
*   _In `LevelMaker.lua`, generate a random-colored key and lock block (taken from `keys_and_locks.png` in the `graphics` folder of the distro). The key should unlock the block when the player collides with it, triggering the block to disappear._ This is something you’ll introduce into `LevelMaker.generate` while it’s actively generating the level; simply maintaining a flag for whether the key and lock have been spawned and placed and randomly choosing to place them down could do (or you could simply do it after the whole rest of the level is generated). The former will likely be easier so you can conditionally do it when you’re not already spawning a block, since otherwise you’ll have to iterate over all of the blocks you’ve already generated throughout the level and compare their positions with that of where you’d potentially like to generate a key or lock. See how the code for spawning gems works (particularly with the `onConsume` callback) for how you might implement picking up the key, and see the code for spawning blocks and the `onCollide` function for how you might implement the key blocks!
*   _Once the lock has disappeared, trigger a goal post to spawn at the end of the level. Goal posts can be found in `flags.png`; feel free to use whichever one you’d like! Note that the flag and the pole are separated, so you’ll have to spawn a `GameObject` for each segment of the flag and one for the flag itself._ This is code we can likely add to the `onCollide` function of our lock blocks, once we’ve collided with them and have the key they need to unlock. Just like gems spawn when we collide with some overhead blocks, you’ll simply need to add new `GameObject`s to the scene that comprise a flag pole. Note that the pole and flag are separate objects, but they should be placed in such a way that makes them look like one unit! (See the scene mockup in `full_sheet.png` for some inspiration).
*   _When the player touches this goal post, we should regenerate the level, spawn the player at the beginning of it again (this can all be done via just reloading `PlayState`), and make it a little longer than it was before. You’ll need to introduce `params` to the `PlayState:enter` function that keeps track of the current level and persists the player’s score for this to work properly._ The easiest way to do this is to just add an `onConsume` callback to each flag piece when we instantiate them in the last goal; this `onConsume` method should then just restart our `PlayState`, only now we’ll need to ensure we pass in our `score` and `width` of our game map so that we can generate a map larger than the one before it. For this, you’ll need to implement a `PlayState:enter` method accordingly; see prior assignments for plenty of examples on how we can achieve this! And don’t forget to edit the default `gStateMachine:change('play')` call to take in some default score and level width!

## How to Submit

1.  If you haven’t done so already, visit [this link](https://submit.cs50.io/invites/46e6f2ea29954ce9bb1bdc478a440055), log in with your GitHub account, and click **Authorize cs50**. Then, check the box indicating that you’d like to grant course staff access to your submissions, and click **Join course**.
2.  Using [Git](https://git-scm.com/downloads), push your work to `https://github.com/me50/USERNAME.git`, where `USERNAME` is your GitHub username, on a branch called `games50/assignments/2020/x/4` or, if you’ve installed [`submit50`](https://cs50.readthedocs.io/submit50/), execute

    <div class="highlighter-rouge">

    <div class="highlight">

        submit50 games50/assignments/2020/x/4

    </div>

    </div>

    instead.

3.  [Record a 1- to 5-minute screencast](https://www.howtogeek.com/205742/how-to-record-your-windows-mac-linux-android-or-ios-screen/) in which you demonstrate your app’s functionality and/or walk viewers through your code. [Upload that video to YouTube](https://www.youtube.com/upload) (as unlisted or public, but not private) or somewhere else.
4.  [Submit this form](https://forms.cs50.io/a28af6ca-8de9-4a7e-a634-f4ecc126e255).

You can then go to [https://cs50.me/cs50g](https://cs50.me/cs50g) to view your current progress!

</div>

## [My Submission (YouTube)](https://youtu.be/GHilm558_IM)
