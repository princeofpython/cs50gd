

# Assignment 1: “Flappy Bird, The Reward Update”

<h2 id="objectives">Objectives</h2>

<ul>
  <li>Read and understand all of the Flappy (Fifty!) Bird source code from Lecture 1.</li>
  <li>Influence the generation of pipes so as to bring about more complicated level generation.</li>
  <li>Give the player a medal for their performance, along with their score.</li>
  <li>Implement a pause feature, just in case life gets in the way of jumping through pipes!</li>
</ul>

<h2 id="getting-started">Getting Started</h2>

<p>Download the distro code for your game from <a href="https://cdn.cs50.net/games/2019/x/assignments/1/assignment1.zip">https://cdn.cs50.net/games/2019/x/assignments/1/assignment1.zip</a> and unzip <code class="highlighter-rouge">assignment1.zip</code>, which should yield a directory called <code class="highlighter-rouge">assignment1</code>.</p>

<p>Then, in a terminal window (located in <code class="highlighter-rouge">/Applications/Utilities</code> on Mac or by typing
<code class="highlighter-rouge">cmd</code> in the Windows task bar), move to the directory where you extracted <code class="highlighter-rouge">assignment1</code>
(recall that the <code class="highlighter-rouge">cd</code> command can change your current directory), and run</p>

<div class="highlighter-rouge"><div class="highlight"><pre class="highlight"><code>cd assignment1
</code></pre></div></div>

<h2 id="flapping-your-wings">Flapping Your Wings</h2>

<p>Your second assignment won’t be quite as easy as last week’s, but don’t worry! The pieces, taken one at a time,
are still quite bite-sized and manageable and will mainly be a recap of what we’ve covered thoroughly in lecture
leading up to this point :) For a refresher on LÖVE2D, as well as some helpful links for getting started, do just
visit the following:</p>

<p><a href="https://love2d.org/">https://love2d.org/</a></p>

<p><a href="https://love2d.org/wiki/Getting_Started">https://love2d.org/wiki/Getting_Started</a></p>

<p>Be sure to watch Lecture 1 and read through the code so you have a firm understanding of how it works before diving in!
In particular, take note of where the logic is for spawning pipes and the parameters that drive both the gap between pipes
and the interval at which pipes spawn, as those will be two primary components of this update! You’ll be making some notable
changes to the ScoreState, so be sure to read through that as well and get a sense for how images are stored, since you’ll be
incorporating your own! Lastly, think about what you need in order to incorporate a pause feature (a simple version of which
we saw in lecture!). And if we want to pause the music, we’ll probably need a method to do this that belongs to the audio object
LÖVE gives us when we call <code class="highlighter-rouge">love.audio.newSource</code>; try browsing the documentation on the LÖVE2D wiki to find out what it is!</p>

<p>Your goals this assignment:</p>

<ul>
  <li>Randomize the gap between pipes (vertical space), such that they’re no longer hardcoded to 90 pixels.</li>
  <li>Randomize the interval at which pairs of pipes spawn, such that they’re no longer always 2 seconds apart.</li>
  <li>When a player enters the ScoreState, award them a “medal” via an image displayed along with the score; this can be any image or
any type of medal you choose (e.g., ribbons, actual medals, trophies, etc.), so long as each is different and based on the points they
scored that life. Choose 3 different ones, as well as the minimum score needed for each one (though make it fair and not too hard to
test :)).</li>
  <li>Implement a pause feature, such that the user can simply press “P” (or some other key) and pause the state of the game. This pause
effect will be slightly fancier than the pause feature we showed in class, though not ultimately that much different. When they pause
the game, a simple sound effect should play (I recommend testing out bfxr for this, as seen in Lecture 0!). At the same time this sound
effect plays, the music should pause, and once the user presses P again, the gameplay and the music should resume just as they were! To
cap it off, display a pause icon in the middle of the screen, nice and large, so as to make it clear the game is paused.</li>
</ul>

<h2 id="how-to-submit">How to Submit</h2>

<ol>
  <li>If you haven’t done so already, visit <a href="https://submit.cs50.io/invites/46e6f2ea29954ce9bb1bdc478a440055">this link</a>, log in with your GitHub account, and click <strong>Authorize cs50</strong>. Then, check the box indicating that you’d like to grant course staff access to your submissions, and click <strong>Join course</strong>.</li>
  <li>
    <p>Using <a href="https://git-scm.com/downloads">Git</a>, push your work to <code class="highlighter-rouge">https://github.com/me50/USERNAME.git</code>, where <code class="highlighter-rouge">USERNAME</code> is your GitHub username, on a branch called <code class="highlighter-rouge">games50/assignments/2020/x/1</code> or, if you’ve installed <a href="https://cs50.readthedocs.io/submit50/"><code class="highlighter-rouge">submit50</code></a>, execute</p>

	submit50 games50/assignments/2020/x/1

  </li>
  <li><a href="https://www.howtogeek.com/205742/how-to-record-your-windows-mac-linux-android-or-ios-screen/">Record a 1- to 5-minute screencast</a> in which you demonstrate your app’s functionality and/or walk viewers through your code. <a href="https://www.youtube.com/upload">Upload that video to YouTube</a> (as unlisted or public, but not private) or somewhere else.</li>
  <li><a href="https://forms.cs50.io/083e7ac4-e2b5-4060-809d-8cf71136bf41">Submit this form</a>.</li>
</ol>

<p>You can then go to <a href="https://cs50.me/cs50g">https://cs50.me/cs50g</a> to view your current progress!</p>



