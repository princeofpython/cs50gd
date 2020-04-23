

# Assignment 0: “Pong, The AI Update”


<h2 id="objectives">Objectives</h2>

<ul>
  <li>Read and understand all of the Pong source code from Lecture 0.</li>
  <li>Implement a basic AI for either Player 1 or 2 (or both!).</li>
</ul>

<h3 id="your-first-game">Your First Game</h3>

<p>Download the distribution code for your game from <a href="https://cdn.cs50.net/games/2019/x/assignments/0/assignment0.zip">https://cdn.cs50.net/games/2019/x/assignments/0/assignment0.zip</a> and unzip <code class="highlighter-rouge">assignment0.zip</code>, which should yield a directory called <code class="highlighter-rouge">assignment0</code>.</p>

<p>Then, in a terminal window (located in <code class="highlighter-rouge">/Applications/Utilities</code> on Mac or by typing
<code class="highlighter-rouge">cmd</code> in the Windows task bar), move to the directory where you extracted <code class="highlighter-rouge">assignment0</code>
(recall that the <code class="highlighter-rouge">cd</code> command can change your current directory), and run</p>

<div class="highlighter-rouge"><div class="highlight"><pre class="highlight"><code>cd assignment0
</code></pre></div></div>

<h2 id="its-game-time">It’s Game Time</h2>

<p>Your first assignment in the course will be a fairly easy one,
since the dive into game programming can be deep enough as it is without having to implement an
entire code base from scratch! Instead, we’ll take the Pong example we covered in class and
extend it in a small but fun way by giving one of the paddles (or perhaps both) logic for playing
the game so that you don’t always need a buddy to play the game with you! We’ll approach problem
sets in the course this way generally, taking the full code bases we’ve used in lecture and extending
them so that you’ll get plenty of experience interacting with fully implemented games. You can even
use these projects as templates and jumping boards for your own games!</p>

<p>Of course, the code won’t run if you don’t have LÖVE2D installed, so we’ll have to tackle that in addition to
grabbing the code; the course uses version 0.10.2 for its source code, so do just choose the appropriate distribution of that version for your system here:</p>

<p><a href="https://bitbucket.org/rude/love/downloads/">https://bitbucket.org/rude/love/downloads/</a></p>

<p>For further information on how to actually run games, do just visit the following page:</p>

<p><a href="https://love2d.org/wiki/Getting_Started">https://love2d.org/wiki/Getting_Started</a></p>

<p>Once the code and LÖVE2D have been downloaded and installed, the actual change you’ll be making to the code base is
small, but it will require you to understand what many of the pieces do, so be sure to watch Lecture 0 and read
through the code so you have a firm understanding of how it works before diving in! In particular, take note of how
paddle movement works, reading both the <code class="highlighter-rouge">Paddle</code> class as well as the code in <code class="highlighter-rouge">main.lua</code> that actually drives the
movement, located in the <code class="highlighter-rouge">update</code> function (currently done using keyboard input for each). If our agent’s goal is
just to deflect the ball back toward the player, what needs to drive its movement?</p>

<p>Your goal:</p>

<ul>
  <li>Implement an AI-controlled paddle (either the left or the right will do) such that it will try to deflect
the ball at all times. Since the paddle can move on only one axis (the Y axis), you will need to determine how to
keep the paddle moving in relation to the ball. Currently, each paddle has its own chunk of code where input is
detected by the keyboard; this feels like an excellent place to put the code we need! Once either the left or right
paddle (or both, if desired) try to deflect the paddle on their own, you’ve done it!</li>
</ul>

