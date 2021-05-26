<div class="container-lg px-3 my-3 markdown-body">

# Assignment 9: “Dreadhalls, The Tumble Update”

## Objectives

*   Read and understand all of the Dreadhalls source code from Lecture 9.
*   Spawn holes in the floor of the maze that the player can fall through (but not too many; just three or four per maze is probably sufficient, depending on maze size).
*   When the player falls through any holes, transition to a “Game Over” screen similar to the Title Screen, implemented as a separate scene. When the player presses “Enter” in the “Game Over” scene, they should be brought back to the title.
*   Add a Text label to the Play scene that keeps track of which maze they’re in, incrementing each time they progress to the next maze. This can be implemented as a static variable, but it should be reset to 0 if they get a Game Over.

## Getting Started

Download the distro code for your game from [https://cdn.cs50.net/games/2019/x/assignments/9/assignment9.zip](https://cdn.cs50.net/games/2019/x/assignments/9/assignment9.zip) and unzip `assignment9.zip`, which should yield a directory called `assignment9`.

Then, in a terminal window (located in `/Applications/Utilities` on Mac or by typing `cmd` in the Windows task bar), move to the directory where you extracted `assignment9` (recall that the `cd` command can change your current directory), and run

<div class="highlighter-rouge">

<div class="highlight">

    cd assignment9

</div>

</div>

## Falls in the Halls

Welcome to your ninth assignment! Though Unity may seem daunting at first, you’re probably finding your way around the software more easily this time around. This week’s assignment is fairly simple, but it will require you to get involved with scenes, part of the dungeon generation, and more; however, this and next week’s assignment will be rather light compared to prior assignments so that you have more time to focus on your final project.

Your goal this assignment:

*   _Spawn holes in the floor of the maze that the player can fall through (but not too many; just three or four per maze is probably sufficient, depending on maze size)._ This should be very easy and only a few lines of code. The `LevelGenerator` script will be the place to look here; we aren’t keeping track of floors or ceilings in the actual maze data being generated, so best to take a look at where the blocks are being insantiated (using the comments to help find!).
*   _When the player falls through any holes, transition to a “Game Over” screen similar to the Title Screen, implemented as a separate scene. When the player presses “Enter” in the “Game Over” scene, they should be brought back to the title._ Recall which part of a Unity GameObject maintains control over its position, rotation, and scale? This will be the key to testing for a game over; identify which axis in Unity is up and down in our game world, and then simply check whether our character controller has gone below some given amount (lower than the ceiling block, presumably). Another fairly easy piece to put together, though you should probably create a `MonoBehaviour` for this one (something like `DespawnOnHeight`)! The “Game Over” scene that you should transition to can effectively be a copy of the Title scene, just with different wording for the `Text` labels. Do note that transitioning from the Play to the Game Over and then to the Title will result in the Play scene’s music overlapping with the Title scene’s music, since the Play scene’s music is set to never destroy on load; therefore, how can we go about destroying the audio source object (named `WhisperSource`) at the right time to avoid the overlap?
*   _Add a Text label to the Play scene that keeps track of which maze they’re in, incrementing each time they progress to the next maze. This can be implemented as a static variable, but it should be reset to 0 if they get a Game Over._ This one should be fairly easy and can be accomplished using static variables; recall that they don’t reset on scene reload. Where might be a good place to store it?

## How to Submit

1.  If you haven’t done so already, visit [this link](https://submit.cs50.io/invites/46e6f2ea29954ce9bb1bdc478a440055), log in with your GitHub account, and click **Authorize cs50**. Then, check the box indicating that you’d like to grant course staff access to your submissions, and click **Join course**.
2.  Using [Git](https://git-scm.com/downloads), push your work to `https://github.com/me50/USERNAME.git`, where `USERNAME` is your GitHub username, on a branch called `games50/assignments/2020/x/9` or, if you’ve installed [`submit50`](https://cs50.readthedocs.io/submit50/), execute

    <div class="highlighter-rouge">

    <div class="highlight">

        submit50 games50/assignments/2020/x/9

    </div>

    </div>

    instead.

3.  [Record a 1- to 5-minute screencast](https://www.howtogeek.com/205742/how-to-record-your-windows-mac-linux-android-or-ios-screen/) in which you demonstrate your app’s functionality. [Upload that video to YouTube](https://www.youtube.com/upload) (as unlisted or public, but not private) or somewhere else.
4.  [Submit this form](https://forms.cs50.io/5405ae02-4a27-4779-9688-0024631445f1).

You can then go to [https://cs50.me/cs50g](https://cs50.me/cs50g) to view your current progress!

</div>

## [My Submission (YouTube)](https://youtu.be/hJFrnlmqWac)
