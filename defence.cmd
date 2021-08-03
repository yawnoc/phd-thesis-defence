%%
%title
  defence
%resources
  <script src="paged.polyfill.js"></script>
%css a~~~~~~~~
  :root {
    --solid-line: 1px solid black;
    --solid-line-thick: 3px solid black;
    --line-grey: #949494;
    --text-grey: #595959;
  }
  @page {
    border-top: var(--solid-line);
    margin: 2cm;
    padding-top: 0.3em;
    size: A4;
    @top-left {
      content: "Conway Li";
      margin-bottom: 0.3em;
      vertical-align: bottom;
    }
    @bottom-right {
      content: "Page " counter(page) " of " counter(pages);
      margin-top: 0.5em;
      vertical-align: top;
    }
  }
  a {
    color: blue;
    text-decoration: none;
  }
  blockquote {
    border-left: var(--solid-line-thick);
    margin-left: 0.5em;
    margin-bottom: 0;
    padding: 0.3em 0.5em;
  }
  body {
    font-family: Tinos, serif;
    font-size: 11pt;
  }
  h1 {
    font-size: 1.4em;
    text-align: center;
  }
  h2 {
    font-size: 1.33em;
    margin-top: 2em;
  }
  h1 + h2 {
    margin-top: 0;
  }
  h3 {
    font-size: 1.2em;
  }
  h4 {
    font-size: 1em;
  }
  ol.top-level > li {
    margin-bottom: 1.3em;
  }
  ol, ul {
    margin-top: 0.3em;
    padding-left: 1.7em;
  }
  p {
    margin-top: 0.5em;
    margin-bottom: 0;
  }
  .examiner {
    color: var(--text-grey);
    border-color: var(--line-grey);
    font-family: Arimo, sans-serif;
  }
~~~~~~~~
%%


# Ph.D. Defence #


## Examiner~1 ##

### Questions ###

++++++{.top-level}
1.{#1-summary}

  """"{.examiner}
  Please summarise in 5~minutes
  the main aims, methods and results of your work
  """"
  <## TODO ##>


2.{#1-negligible}

  """"{.examiner}
  P37. You mention that you wish to find
  when the self-viewing radiation is 'practically negligible'.
  How do you quantify this?
  """"
  ----
  By 'practically negligible' I mean that
  the __dimensionless self-viewing ratio~<var>R</var> falls below~1%__
  (which is an arbitrarily chosen cutoff).
  At any point on the boundary, <var>R</var>~is the ratio between
  the amount of inbound self-viewing radiation
  (which boundary tracing does *not* account for)
  and the amount of outbound radiation.
  ----

3.{#1-diagram}

  """"{.examiner}
  P41. This is a very complicated diagram. Please interpret it.
  """"
  ----
  Figure~3.22a shows the process of constructing
  an asymmetric conduction--radiation domain
  for a specific cosinusoidal solution.
  We have the following:
  ----
  ====
  * [Solid black curves]:
      __traced boundaries__, which satisfy the radiation condition.
      There are two branches of these (upper and lower).
  * [Dotted black line]:
      __constant-temperature__ (heat-supplying) boundary.
  * [Grey regions]:
      __non-viable domain__, in which traced boundaries do not exist.
  * [Grey curves]:
      __inflection frontiers__,
      where each branch of traced boundaries inflects.
  ====
  ----
  To successfully construct a convex domain,
  we need portions of traced boundary that
  ----
  ++++
  1. lie convex side of the relevant inflection frontiers,
  2. reach the constant-temperature (heat-supplying) boundary, and
  3. reach the line of symmetry~<var>y</var> = 0
     (for joining with the opposite branch).
  ++++
  ----
  The only traced boundaries shown in Figure~3.22a
  are those that satisfy all of these conditions.
  ----
  ----
  Figure~3.22b shows a specific example of an asymmetric
  conduction--radiation domain constructed in this manner.
  ----

4.{#1-regimes}

  """"{.examiner}
  P48. Explain how you differentiate between the hot/transition/ cold regimes.
  """"
  ----
  When something interesting happens
  (e.g.~a terminal point or curve appears or disappears)
  I call it a __transition__.
  The naming of regimes on either side of a transition
  comes from the dimensionless group~<var>A</var>.
  Since <var>A</var> is inversely proportional to the temperature scale cubed,
  small~<var>A</var> is __hot__, while large~<var>A</var> is __cold__.
  ----

5.{#1-novelty}

  """"{.examiner}
  Chapter~6.
  Here you claim you have introduced some novelty in the numerical work.
  Please explain this. What makes it novel?
  """"
  ----
  The novelty lies in the observation that we may use
  a __different contact angle__ when boundary tracing
  to the contact angle of the known wedge solution.
  This observation was *not* made in my Honours thesis.
  ----

6.{#1-publication}

  """"{.examiner}
  Which of your results are worthy of publication?
  """"
  ----
  The most worthy results are those with practical application:
  ----
  ====
  * Plane-source physical fin example
  * Dip-coating with roughness/indentations
  ====
  ----
  My supervisors and I are preparing manuscripts that cover
  all chapters of the thesis.
  ----

7.{#1-proud}

  """"{.examiner}
  What results(s) is/are you most proud of? Why?
  """"
  ====
  * The __self-viewing radiation analysis__ and the __physical example__
    for the plane-source fin.
    These turned what was originally a rather meagre chapter
    into the centrepiece of the radiation section
    (the narrative was changed from "alas we have no convex boundaries"
    to "look we can salvage practical results").
  * The __etching of grooves__ in the dip-coating problem.
    It was quite satisfying to see the numerical verification (Figure~7.23).
  * The __new interpretation__ of the comparison observation (capillarity)
    that ties in with the roughness theory.
    This was very neat, in my opinion.
  ====

8.{#1-extend}

  """"{.examiner}
  If you had funding for another 6 months of research,
  what would you do to extend this study?
  """"
  ----
  Definitely I would further develop the ideas in Appendix~C
  (boundary tracing in the __complex plane__ using __conformal mapping__).
  This looks a promising area for future research.
  ----
++++++


### Revisions ###

++++{.top-level}
1. To be raised at the viva:

  """"{.examiner}
  [...] a couple of very minor typos [...].
  """"

2. Suggested (but not mandatory) expansion:

  """"{.examiner}
  [...]
  If I were critical I would ask that
  the candidate extend both Section~1.1 and Chapter~9.
  [...]
  However I am not insistent that these modification are made;
  they are certainly not a deal-breaker by any stretch.
  """"
++++




## Examiner~2 ##

### Questions ###

#### Chapter~1 ####

++++++{.top-level}
1.{#2-1-parallel}

  """"{.examiner}
  Pg~2: grad(T)=|F| then traced boundary is parallel to the local-T contour.
  Isn't it parallel to all T-contours?
  """"

2.{#2-1-offer}
  """"{.examiner}
  General: What does the boundary tracing method offer
  that isn't captured by say finite element methods
  where non-uniform boundaries can be triangulated?
  """"

3.{#2-1-fluxes}
  """"{.examiner}
  General: Did you consider other types of fluxes
  to allow for negative temperature in the "non-viable regions"
  """"

4.{#2-1-fluid}
  """"{.examiner}
  General: Did you consider looking at fluid-flow problems?
  """"
  """"{.examiner}
  For example, could you identify interesting Rankine bodies
  using this technique?
  """"
  """"{.examiner}
  Stokes flow is also a Laplace equation.
  """"
++++++

#### Chapter~2 ####

++++++{.top-level}
1.{#2-2-orthogonal}
  """"{.examiner}
  Pg~11: (2.1) Can you walk me through this?
  Au and av are orthogonal and n should be orthogonal to both.
  How can it be written as a linear combination of these vectors?
  """"

2.{#2-2-calculus}
  """"{.examiner}
  Pg~15: Double check calculus for (2.24) and (2.25).
  It should have du/dv=du/ds/dv/ds
  but it is not immediately clear this is true.
  """"
++++++

#### Chapter~3 ####

++++++{.top-level}
1.{#2-3-differentiable}
  """"{.examiner}
  Pg~23: Other than self-viewing radiation, are there any other issues
  with having a non-differentiable domain?
  """"

2.{#2-3-brachistochrome}
  """"{.examiner}
  General: The boundary traces seem to represent symmetries in the physics.
  A certain amount of stuff has to get out and that can be done in many ways.
  In the spirit of a brachistochrome problem, did you consider shapes
  which get it out efficiently (i.e. maximize/minimize arclength)?
  """"

3.{#2-3-superposition}
  """"{.examiner}
  Pg~23: Self-viewing radiation. If I understand this right,
  if you have a single curve (no patching) then it satisfies the problem
  (mathematically solving the radiation condition).
  When you patch curves together you have a superposition
  that breaks the math problem?
  """"

4.{#2-3-images}
  """"{.examiner}
  Pg~23: Related to previous question.
  Is there a method of images type approach you can use
  to extend this technique further?
  """"

5.{#2-3-z}
  """"{.examiner}
  Pg~25: Why do you need to worry about the z-coordinate?
  A perfectly symmetric shape should never have incident radiation
  from different values of z as the normal vectors are parallel.
  """"

6.{#2-3-point}
  """"{.examiner}
  Pg~35: When A=1 the radiation boundary collapses to a point.
  However, Laplace's equation cannot admit point constraints,
  what is happening here?
  """"

7.{#2-3-terminal}
  """"{.examiner}
  Pg~38: Can you clarify why the x-axis terminal points are interesting?
  """"

8.{#2-3-saddle}
  """"{.examiner}
  Pg~39: You have this saddle-node structure that emerges.
  Is there something deeper about the problem this is exposing?
  What is special about B=1?
  """"

9.{#2-3-asymptotic}
  """"{.examiner}
  Pg~40:
  There seems to be an interesting behaviour change from Case 3 to 4 (B=1).
  Did you consider asymptotic expansions of B near 1
  to get a better handle of this transition?
  """"

10.{#2-3-errors}
  """"{.examiner}
  Pg~43: Do you have a sense of why the errors are strongest at the boundaries?
  Afterall, this is precisely a method for designing boundaries
  that make the solutions work.
  Is the issue the incompatibility of boundary conditions at the corners?
  """"

  """"{.examiner}
  Did you consider numerical refinement of the mesh to see
  if the error scales with the correct numerical order of the method?
  """"

12.{#2-3-estimates}
  """"{.examiner}
  Pg~43: Did you consider an example with non-convex boundaries
  to demonstrate the impact of the self-radiation
  and how it compares to some of your bounds and estimates?
  """"
++++++

#### Chapter~4 ####

++++++{.top-level}
1.{#2-4-geometry}
  """"{.examiner}
  Page~48: The geometry of the viable domains is interesting.
  Do you have any intuition for why there is an annular non-viable domain
  in the hot region?
  """"

2.{#2-4-tangency}
  """"{.examiner}
  Pg~54: Can you explain "convex at the point of tangency" condition
  when locally the curve is quadratic (and hence convex)?
  """"

  """"{.examiner}
  It looks like you want the slope to be shallower than the circle.
  Why is that? Is the constraint on rsharp too restrictive?
  """"

3.{#2-4-error}
  """"{.examiner}
  Pg~58: It looks like the numerical error is greatest at the inner Td circle
  where the log condition is applied.
  Presumably, this is more accurate if you make the inner radius smaller.
  Is it more realistic to have a larger circle
  or is the larger enclosed domain more realistic?
  """"

4.{#2-4-shape}
  """"{.examiner}
  Pg~61: As you acknowledge the power loss is the same
  regardless of the outer shape.
  Is there any reason one shape is better than another?
  """"
++++++

#### Chapter~5 ####

++++++{.top-level}
1.{#2-5-transition}
  """"{.examiner}
  Pg~69: The difference between the two transition A values is 0.7
  which is not very large. Is there any significance to this?
  """"

2.{#2-5-doublet}
  """"{.examiner}
  Pg~74: This “tear-drop” looks a lot like an airfoil with a puncture.
  General: Why not consider a doublet?
  """"
  """"{.examiner}
  This is a limiting bipolar scenario and may reveal
  some interesting connection to the polar coordinates example.
  I guess it is in the cold regime, but what about uneven source/sink?
  """"
++++++

#### Chapter~6 ####

++++++{.top-level}
1.{#2-6-boundary}
  """"{.examiner}
  Pg~101/102: You notice that you only need to solve the PDE
  (not the boundary conditions) for boundary tracing
  and so you can have a separate gamma for the BVP than a gamma for the BC.
  Why not pick different BC all together for the BVP solve?
  """"

  """"{.examiner}
  Are there boundary conditions
  where special analytical solutions can be found?
  """"

  """"{.examiner}
  Are there BCS that make the computation easier to solve?
  """"

2.{#2-6-gamma}
  """"{.examiner}
  Pg~104: You need to have gamma\_dot
  and a BVP for gamma such that gamma\_dot\>gamma.
  Does it not make sense to choose the smallest gamma possible then
  to increase the probability that a given gamma\_dot satisfies the inequality.
  """"

3.{#2-6-advantage}
  """"{.examiner}
  Pg.~110: You claim that the advantage of boundary tracing for wedge flow
  is a single BVP computation and N boundary solves vs N BVP solves. \+
  1) Can you comment on the difference in computation time of the two methods.
  """"
  """"{.examiner}
  2) In Figure~6.31 you only do a subset of boundary tracing
  whereas you have a nice full curve using the numerical method.
  This makes the numerical method look better.
  Furthermore, you have errors between the boundary tracing and numerics,
  is this error worth the computational speedup?
  """"
++++++

#### Chapter~7 ####

++++++{.top-level}
1.{#2-7-discrepancy}
  """"{.examiner}
  Pg~112: You notice a discrepancy of \>10% in the re-entrant wedge.
  Can you comment on why this might be?
  """"

2.{#2-7-hybrid}
  """"{.examiner}
  Pg~113: You notice the corner effect is only problematic for r\<\<1.
  Can you do some hybrid asymptotic numerical method
  to get a more accurate numerical solution with fewer triangles?
  """"

3.{#2-7-deflection}
  """"{.examiner}
  Pg~118: Is there any connection between the lack of domain formation
  for the re-entrant wedge and the trouble near the corner.
  It is an extreme case of deflection.
  """"

4.{#2-7-smooth}
  """"{.examiner}
  Pg~122: Figure~7.17 the height appears not to be smooth.
  Can you comment on this?
  """"

5.{#2-7-complexity}
  """"{.examiner}
  Pg~128: What is the computational complexity of the etching
  vs just solving the full problem numerically.
  """"

6.{#2-7-etching}
  """"{.examiner}
  General: Can you explain to me the point of the etching in Chapter~7?
  It is not clear why it is needed for the manufacturing process.
  Why not just etch the true contour and dip? I think I'm missing something.
  """"
++++++

#### Chapter~8 ####

++++++{.top-level}
1.{#2-8-coordinates}
  """"{.examiner}
  Pg~133: Can you explain what you mean by only n and grad
  (not script n and script D) have physical meaning.
  n and grad are agnostic to coordinate system and all you have done
  is shifted to polar coordinates.
  """"

2.{#2-8-newton}
  """"{.examiner}
  Pg~135: Why do you think the nonlinear BVP is experiencing issues
  using the built-in solver.
  Why does your own implementation of Newton's method do better?
  Are you essentially doing an IMEX type scheme?
  """"

3.{#2-8-bounded}
  """"{.examiner}
  Pg~135: You comment that a bounded solution is fine
  because H-\>0 and the singularity at r=0 is removed,
  but T is of 0/0 form so how do you know?
  """"
  """"{.examiner}
  Could you do a further expansion in H when r is small to get the correction?
  """"

4.{#2-8-context}
  """"{.examiner}
  General: Can you give the context/importance of section 8.3?
  Why do we want to consider non-rounded corners?
  """"
  """"{.examiner}
  What is the value of the result of bounded height?
  """"
++++++

### Revisions ###
