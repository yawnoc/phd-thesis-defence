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
    --abs-gap: 0.05em;
    --norm-gap: 0.1em;
    --delimeter-size: 1.1em;
  }
  @page {
    border-top: var(--solid-line);
    margin: 2cm;
    padding-top: 0.5em;
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
    margin: 0.3em auto;
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
  sub, sup {
    line-height: 0;
  }
  .abs-open {
    font-size: var(--delimeter-size);
    margin-right: var(--abs-gap);
  }
  .abs-close {
    font-size: var(--delimeter-size);
    margin-left: var(--abs-gap);
  }
  .accidental {
    font-family: 'DejaVu Sans';
  }
  .del {
    font-family: 'DejaVu Sans';
    font-size: 0.985em;
  }
  .display-equation {
    margin: 0.2em auto;
  }
  .examiner {
    color: var(--text-grey);
    border-color: var(--line-grey);
    font-family: Arimo, sans-serif;
  }
  .norm-open {
    font-size: var(--delimeter-size);
    margin-right: var(--norm-gap);
  }
  .norm-close {
    font-size: var(--delimeter-size);
    margin-left: var(--norm-gap);
  }
  .tight-bottom {
    margin-bottom: -0.2em;
  }
  .tight-top {
    margin-top: -0.2em;
  }
  .thesis {
    margin: 0.4em 2em;
  }
~~~~~~~~
%%

e{: [del] : \/__{.del .vector} ∇__ :}
e{: [.] : \/__{.vector} ·__ :}

c{%
  \|\|
    (?P<operand> .+? )
  \|\|
%
  <span class="norm-open">~~||~~</span>\\
    \g<operand>\\
  <span class="norm-close">~~||~~</span>
%}

c{%
  \|
    (?P<operand> .+? )
  \|
%
  <span class="abs-open">~~|~~</span>\\
    \g<operand>\\
  <span class="abs-close">~~|~~</span>
%}

s{%
  \[
    (?P<symbol> [^\s0-9] )
  \]
%
  __{.vector} \g<symbol>__
%}

s{%
  \.\{
    (?P<variable> [^\s0-9] )
  \}
%
  <sub>{\g<variable>}</sub>
%}

s{%
  \{
    (?P<variable> [^\s0-9] )
  \}
%
  <var>\g<variable></var>
%}

Z{%
  \^ (?P<exponent> [0-9] )
%
  <sup>\g<exponent></sup>
%}

s{: (flat) : ♭ :}
s{: (nat) : ♮ :}
s{: (sharp) : ♯ :}
Z{%
  (?P<accidental> [♭♮♯] )
%
  <sub class="accidental">\g<accidental></sub>
%}


# Ph.D. Defence #


## Examiner~1 ##

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
  the dimensionless self-viewing ratio~{R} (equation~(3.24), Page~24)
  falls below~1% (an arbitrarily chosen cutoff).
  At any point on the boundary, {R}~is the ratio between
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
      traced boundaries, which satisfy the radiation condition.
      There are two branches of these (upper and lower).
  * [Dotted black line]:
      constant-temperature (heat-supplying) boundary.
  * [Grey regions]:
      non-viable domain, in which traced boundaries do not exist.
  * [Grey curves]:
      inflection frontiers,
      where each branch of traced boundaries inflects.
  ====
  ----
  To successfully construct a convex domain,
  we need portions of traced boundary that
  ----
  ++++
  1. lie convex side of the relevant inflection frontiers,
  2. reach the constant-temperature (heat-supplying) boundary, and
  3. reach the line of symmetry~{y} = 0
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
  I call it a _transition_.
  The naming of regimes on either side of a transition
  comes from the dimensionless group~{A}.
  Since {A}~is inversely proportional to the temperature scale cubed,
  small~{A} is _hot_, while large~{A} is _cold_.
  ----

5.{#1-novelty}

  """"{.examiner}
  Chapter~6.
  Here you claim you have introduced some novelty in the numerical work.
  Please explain this. What makes it novel?
  """"
  ----
  The novelty lies in the observation that we may use
  a *different contact angle* when boundary tracing
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
  * The self-viewing radiation analysis and the physical example
    for the plane-source fin.
    These turned what was originally a rather meagre chapter
    into the centrepiece of the radiation section
    (the narrative was changed from "alas we have no convex boundaries"
    to "look we can salvage practical results").
  * The etching of grooves in the dip-coating problem.
    It was quite satisfying to see the numerical verification
    (Figure~7.23, Page~128).
  * The new interpretation of the comparison observation (capillarity)
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
  (boundary tracing in the complex plane using conformal mapping).
  This looks a promising area for future research.
  ----
++++++




## Examiner~2 ##

### Chapter~1 ###

++++++{.top-level}
1.{#2-1-parallel}

  """"{.examiner}
  Pg~2: grad(T)=\|F\| then traced boundary is parallel to the local-T contour.
  Isn't it parallel to all T-contours?
  """"
  ----
  Here, ||[del]{T}|| = |{F}| is not an identity.
  It holds only at the point in question. \+
  From Page~2:
  ----
  """"""{.thesis}
  [...] and there are three cases <mark>at any given point</mark>:
  ++++
  1. If ||[del]{T}|| \> |{F}|, then [...]
  2. If ||[del]{T}|| = |{F}|, then [...]
  3. If ||[del]{T}|| \< |{F}|, then [...]
  ++++
  """"""
  ----
  The traced boundary is only parallel to the *local* {T}-contour.
  ----

2.{#2-1-offer}
  """"{.examiner}
  General: What does the boundary tracing method offer
  that isn't captured by say finite element methods
  where non-uniform boundaries can be triangulated?
  """"
  ----
  Boundary tracing offers exactness.
  The hypergeometric (2F1) boundaries for the plane source are *exact*
  (notwithstanding self-viewing radiation).
  And although we need numerical integration for the other cases,
  numerically solving ODEs is an elementary process.
  It is cheaper and much more straightforward
  than solving PDEs numerically.
  ----

3.{#2-1-fluxes}
  """"{.examiner}
  General: Did you consider other types of fluxes
  to allow for negative temperature in the "non-viable regions"
  """"
  ----
  No, but an example would be a conduction--convection problem
  where the object contains two internal sources:
  one held above the environment temperature and the other held below it.
  After scaling (which maps the environment temperature to zero),
  this would be a problem with negative temperature.
  ----

4.{#2-1-fluid}
  """"{.examiner}
  General: Did you consider looking at fluid-flow problems?
  For example, could you identify interesting Rankine bodies
  using this technique?
  Stokes flow is also a Laplace equation.
  """"
  ----
  No.
  Boundary tracing requires a flux boundary condition
  where the flux depends on position, solution, and slope.
  As far as I am aware, Rankine body and Stokes flow problems
  do not have such a flux condition.
  ----
++++++

### Chapter~2 ###

++++++{.top-level}
1.{#2-2-orthogonal}
  """"{.examiner}
  Pg~11: (2.1) Can you walk me through this?
  Au and av are orthogonal and n should be orthogonal to both.
  How can it be written as a linear combination of these vectors?
  """"
  ----
  The normal vector~[n] in~(2.1)
  is the same normal vector as that in the flux boundary condition~(1.1).
  It is the normal to a curve *in* the plane;
  it is NOT the normal *to* the plane.
  ----
  ----
  Specifically, [n]~is perpendicular to the differential displacement~\
  d[r] = {h}.{u}\,d{u}\,[a].{u} + {h}.{v}\,d{v}\,[a].{v},
  which is the diagonal of the infinitesimal rectangle of Figure~2.1.
  ----

2.{#2-2-calculus}
  """"{.examiner}
  Pg~15: Double check calculus for (2.24) and (2.25).
  It should have du/dv=du/ds/dv/ds
  but it is not immediately clear this is true.
  """"
  ----
  The calculus is sound.
  We have
  ----
  ''''{.display-equation .tight-bottom}
  ==
    , ({P}{Q} ± {F}√{Φ}) (−{Q}{F} ± {P}√{Φ})
    , =
    , −{P}{F}{Q}^2 ± {P}^2{Q}√{Φ} ± (−{F}^2{Q})√{Φ} + {P}{F}{Φ}
  ==
    ,
    , =
    , ({Φ} − {Q}^2){P}{F} ± ({P}^2 − {F}^2){Q}√{Φ}
  ==
    ,
    , =
    , ({P}^2 − {F}^2){P}{F} ± ({P}^2 − {F}^2){Q}√{Φ}
  ==
    ,
    , =
    , ({P}^2 − {F}^2) ({P}{F} ± {Q}√{Φ}).
  ''''
  ----
  Cross-dividing gives
  ----
  ''''{.display-equation}
  ==
    , ({P}{Q} ± {F}√{Φ}) ÷ ({P}^2 − {F}^2)
    , =
    , ({P}{F} ± {Q}√{Φ}) ÷ (−{Q}{F} ± {P}√{Φ})
  ==
    ,
    , =
    , ({P}{F} ± {Q}√{Φ}) / ([del]{T})^2 ÷ (−{Q}{F} ± {P}√{Φ}) / ([del]{T})^2.
  ''''
  ----
  Therefore
  ----
  ''''{.display-equation .tight-top .tight-bottom}
  ==
    , {h}.{u}({P}{Q} ± {F}√{Φ}) ÷ {h}.{v}({P}^2 − {F}^2)
    , =
    , ({P}{F} ± {Q}√{Φ}) / {h}.{v}([del]{T})^2
        ÷
      (−{Q}{F} ± {P}√{Φ}) / {h}.{u}([del]{T})^2,
  ''''
  ----
  i.e.
  ----
  ''''{.display-equation .tight-top}
  ==
    , d{v}/d{u}~(2.18)
    , =
    , d{v}/d{s}~(2.25) ÷ d{u}/d{s}~(2.24).
  ''''
++++++

### Chapter~3 ###

++++++{.top-level}
1.{#2-3-differentiable}
  """"{.examiner}
  Pg~23: Other than self-viewing radiation, are there any other issues
  with having a non-differentiable domain?
  """"
  ----
  Self-viewing radiation arises not from non-differentiability,
  but from non-convexity (i.e.~boundary elements facing each other).
  ----
  ----
  The issue of non-differentiability arose
  in a discussion with some colleagues in analysis,
  who were concerned about the possibility of line-source singularities
  spontaneously appearing in corners and cusps on the boundary.
  Due to conservation of energy, singularities cannot appear in this manner
  unless we deliberately put them there to begin with.
  With singularities ruled out, the corners and cusps
  (which take up zero length along the boundary) are inconsequential.
  ----

2.{#2-3-brachistochrone}
  """"{.examiner}
  General: The boundary traces seem to represent symmetries in the physics.
  A certain amount of stuff has to get out and that can be done in many ways.
  In the spirit of a brachistochrome problem, did you consider shapes
  which get it out efficiently (i.e. maximize/minimize arclength)?
  """"
  ----
  No, but this would be a good way to extend the results.
  In radiation transfer problems, the relevant measure is _fin efficiency_,
  which is the ratio between the actual amount of heat transferred
  and the amount that would be transferred
  if the entire surface were at the base temperature
  (or equivalently, if the fin conductivity were infinite).
  ----

3.{#2-3-superposition}
  """"{.examiner}
  Pg~23: Self-viewing radiation. If I understand this right,
  if you have a single curve (no patching) then it satisfies the problem
  (mathematically solving the radiation condition).
  When you patch curves together you have a superposition
  that breaks the math problem?
  """"
  ----
  The patching together of curves is perfectly fine.
  The solution to the field equation is the known solution, {T} = {x}.
  There is no superposition.
  ----
  ----
  The issue of self-viewing radiation is specific to
  the radiation boundary condition.
  If the boundary is not convex
  (i.e.~if there are boundary elements that face each other):
  ----
  """"{.thesis}
  some of the outgoing radiation travels not to infinity,
  but strikes another part of the boundary,
  where it might be partially or fully absorbed.
  """"
  ----
  The simple radiation condition [n] [.] [del]{T} = −{T}^4
  only describes outgoing radiation.
  To account for incoming self-viewing radiation,
  we need a non-local integral term, per~(3.23) (Page~24).
  ----

4.{#2-3-images}
  """"{.examiner}
  Pg~23: Related to previous question.
  Is there a method of images type approach you can use
  to extend this technique further?
  """"
  ----
  There is no superposition.
  See [previous](#2-3-superposition).
  ----

5.{#2-3-z}
  """"{.examiner}
  Pg~25: Why do you need to worry about the z-coordinate?
  A perfectly symmetric shape should never have incident radiation
  from different values of z as the normal vectors are parallel.
  """"
  ----
  See Figure~3.6.
  We have elements~d{A} and~d{A}\*, with {z} ≠ {z}\*.
  Their normal vectors are parallel if and only if {x} = {x}\*.
  Thus, there will be self-viewing radiation whenever {x} ≠ {x}\*.
  ----

6.{#2-3-point}
  """"{.examiner}
  Pg~35: When A=1 the radiation boundary collapses to a point.
  However, Laplace's equation cannot admit point constraints,
  what is happening here?
  """"
  ----
  The domain (the region enclosed by the radiation boundary
  and the constant-temperature boundary, which both shrink to a point)
  likewise shrinks to a point.
  Per the original footnote:
  ----
  """"{.thesis}
  At {A} = 1 the candidate boundary touches the line {x} = π/2,
  and the candidate <mark>domain</mark> shrinks to a point.
  """"

7.{#2-3-terminal}
  """"{.examiner}
  Pg~38: Can you clarify why the x-axis terminal points are interesting?
  """"
  ----
  Terminal points along the {x}-axis are interesting
  because they are critical terminal points.
  They provide opportunities to switch between upper and lower branches
  without forming corners.
  Ordinary terminal points do not work
  because they give us a cusp with inconsistent boundary orientation.
  ----

8.{#2-3-saddle}
  """"{.examiner}
  Pg~39: You have this saddle-node structure that emerges.
  Is there something deeper about the problem this is exposing?
  """"
  ----
  The saddle--node structure of Figure~3.20
  merely reflects the birth of a pair of real roots ({x}(flat) and~{x}(sharp))
  for the polynomial equation~(3.64) (Page~38),
  as {B}~increases past~{B}(nat).
  ----
  """"{.examiner}
  What is special about B=1?
  """"
  ----
  See [next](#2-3-asymptotic).
  ----

9.{#2-3-asymptotic}
  """"{.examiner}
  Pg~40:
  There seems to be an interesting behaviour change from Case 3 to 4 (B=1).
  Did you consider asymptotic expansions of B near 1
  to get a better handle of this transition?
  """"
  ----
  {B} = 1 is special in that the contour~{T} = 0 forms a corner at the origin.
  This is a peculiarity of the cosinusoidal solution
  ({T} = 1 − {B} cos {x} cosh {y}).
  At the same time we have an isolated terminal point at the origin,
  as discussed earlier (Pages~32--34).
  ----
  ----
  Computer algebra was able to give me closed-form expressions
  for~{x}(flat) and~{x}(sharp), so I did not pass to asymptotics.
  ----

10.{#2-3-errors}
  """"{.examiner}
  Pg~43: Do you have a sense of why the errors are strongest at the boundaries?
  Afterall, this is precisely a method for designing boundaries
  that make the solutions work.
  Is the issue the incompatibility of boundary conditions at the corners?
  """"
  ----
  The issue is with the numerical solver (`` NDSolve`FEM` ``)
  and how it handles corners where different boundary conditions meet.
  ----
  """"{.examiner}
  Did you consider numerical refinement of the mesh to see
  if the error scales with the correct numerical order of the method?
  """"
  ----
  No, but this is a good idea.
  (In doing so, one would also need to increase the precision
  when numerically integrating for the traced boundaries,
  because there is no point making the verification mesh-refinement
  greater than that of the traced boundaries.)
  ----

11.{#2-3-estimates}
  """"{.examiner}
  Pg~43: Did you consider an example with non-convex boundaries
  to demonstrate the impact of the self-radiation
  and how it compares to some of your bounds and estimates?
  """"
  ----
  No. `` NDSolve`FEM` `` cannot handle non-local boundary conditions.
  In principle though, one could do a fixed-point iteration
  where the self-viewing term is pre-computed from the previous iterate.
  ----
++++++

### Chapter~4 ###

++++++{.top-level}
1.{#2-4-geometry}
  """"{.examiner}
  Page~48: The geometry of the viable domains is interesting.
  Do you have any intuition for why there is an annular non-viable domain
  in the hot region?
  """"
  ----
  This comes down to the shape of the known solution.
  Physically, the non-viable domain is the region in which
  the solution is not steep enough to satisfy the boundary condition.
  In the hot regime ({A} \< {A}(nat)),
  there is an intermediate interval in radius
  where the solution (logarithmic in radius) is less steep
  than the boundary flux (4th power of logarithmic in radius).
  ----

2.{#2-4-tangency}
  """"{.examiner}
  Pg~54: Can you explain "convex at the point of tangency" condition
  when locally the curve is quadratic (and hence convex)?
  """"
  ----
  "Convex at the point of tangency" means that the traced boundary
  (which touches the circle {r} = {r}(sharp))
  must either coincide with the tangent line
  or deflect towards the inner (smaller~{r}) side of it.
  Translating this to Figure~4.7,
  the traced boundary must stay on or to the left of the vertical line.
  ----
  ----
  The first-order behaviour of the traced boundary
  as given in~(4.35) (Page~53) is quadratic
  because it is written in terms of {ξ} = {r} − {r}(sharp).
  Note that {ξ} = 0 is the circle {r} = {r}(sharp), not the tangent line.
  The tangent line is given by~(4.37) (which also has {ξ}~quadratic).
  ----

  """"{.examiner}
  It looks like you want the slope to be shallower than the circle.
  Why is that? Is the constraint on rsharp too restrictive?
  """"
  ----
  I want the traced boundary~(4.35)
  to be shallower than the tangent line~(4.37).
  ----

3.{#2-4-error}
  """"{.examiner}
  Pg~58: It looks like the numerical error is greatest at the inner Td circle
  where the log condition is applied.
  Presumably, this is more accurate if you make the inner radius smaller.
  Is it more realistic to have a larger circle
  or is the larger enclosed domain more realistic?
  """"
  ----
  The relative errors in Figure~4.12 are negative.
  I should probably redo the plot with absolute values.
  ----

4.{#2-4-shape}
  """"{.examiner}
  Pg~61: As you acknowledge the power loss is the same
  regardless of the outer shape.
  Is there any reason one shape is better than another?
  """"
  ----
  In some applications we may want a specific directional distribution
  of thermal radiation (Pages~27--28).
  Or we might want to model some hexagonal nuts on a bolt, for instance.
  ----
++++++

### Chapter~5 ###

++++++{.top-level}
1.{#2-5-transition}
  """"{.examiner}
  Pg~69: The difference between the two transition A values is 0.7
  which is not very large. Is there any significance to this?
  """"
  ----
  This comes down to algebra.
  From Figure~5.3 (Page~68), the two transition values of {A} occur
  when the quartic curve~{v}^4 / A
  touches the exponential curves~cosh {v} ± 1.
  Because all three curves are rapidly increasing,
  there is not much difference between the two values of {A}.
  ----

2.{#2-5-doublet}
  """"{.examiner}
  Pg~74: This “tear-drop” looks a lot like an airfoil with a puncture.
  General: Why not consider a doublet?
  """"
  ----
  For the conduction--radiation problem we need non-negative temperatures.
  A dipole does not have a physical interpretation in this context,
  because there is no way to isolate the positive part of the dipole.
  ----
  """"{.examiner}
  This is a limiting bipolar scenario and may reveal
  some interesting connection to the polar coordinates example.
  I guess it is in the cold regime, but what about uneven source/sink?
  """"
  ----
  Yes, we could extend the work
  to uneven source and sink (with finite separation).
  This would introduce a second dimensionless group (the strength ratio)
  because we no longer have the cancellation mentioned in the footnote
  of Page~63.
  However, the curves of constant temperature would no longer be circles.
  ----
  ----
  An alternative way of introducing a second parameter
  that does not change the shape of the {T}-contours
  is to add a constant to the known solution.
  ----
++++++

### Chapter~6 ###

++++++{.top-level}
1.{#2-6-boundary}
  """"{.examiner}
  Pg~101/102: You notice that you only need to solve the PDE
  (not the boundary conditions) for boundary tracing
  and so you can have a separate gamma for the BVP than a gamma for the BC.
  Why not pick different BC all together for the BVP solve?
  """"
  ----
  Yes, different boundary conditions can be used for the initial solve.
  In fact, one could probably perturb the shape of the corner roundings
  by perturbing the boundary condition in the initial solve.
  ----
  ----
  But given that we have already computed wedge solutions
  using the original contact condition,
  we do not let them go to waste.
  ----
  """"{.examiner}
  Are there boundary conditions
  where special analytical solutions can be found?
  """"
  ----
  The only known analytical solutions to the Laplace--Young equation
  are the half-plane solution and the channel solution.
  Both of these have already been studied in the boundary tracing context.
  ----
  """"{.examiner}
  Are there BCS that make the computation easier to solve?
  """"
  ----
  Dirichlet condition on the boundary would probably be cheaper computationally
  than the nonlinear contact condition.
  ----

2.{#2-6-gamma}
  """"{.examiner}
  Pg~104: You need to have gamma\_dot
  and a BVP for gamma such that gamma\_dot\>gamma.
  Does it not make sense to choose the smallest gamma possible then
  to increase the probability that a given gamma\_dot satisfies the inequality.
  """"
  ----
  Yes, that does make sense.
  But larger~{γ} might lead to rounding shapes/radii
  that cannot be achieved with smaller~{γ}.
  ----

3.{#2-6-advantage}
  """"{.examiner}
  Pg.~110: You claim that the advantage of boundary tracing for wedge flow
  is a single BVP computation and N boundary solves vs N BVP solves. \+
  1) Can you comment on the difference in computation time of the two methods.
  """"
  ----
  A single BVP computation takes between half a minute to half an hour,
  depending on the parameters ({α} and~{γ}).
  Integrating an ODE for a traced boundary takes about a second
  in the worst case.
  ----
  """"{.examiner}
  2) In Figure~6.31 you only do a subset of boundary tracing
  whereas you have a nice full curve using the numerical method.
  This makes the numerical method look better.
  Furthermore, you have errors between the boundary tracing and numerics,
  is this error worth the computational speedup?
  """"
  ----
  Yes, the limited range is a downside (Pages~108--109):
  ----
  """"{.thesis}
  Evidently the range of rounding radii
  which can be accounted for in this manner
  is directly related to the spread of the corner roundings,
  over which we have no control.
  The main weakness of boundary tracing is that
  one cannot predetermine the shape of the resulting traced boundaries,
  but this is to be expected for a method where, by its very nature,
  boundary shape is the unknown.
  """"
  ----
  As is the discrepancy (Page~109):
  ----
  """"{.thesis}
  The two approaches do not give exactly the same height rises
  because the rounding curves produced by boundary tracing
  are not perfectly circular.
  """"
  ----
  Given an already-computed numerical solution (sunk cost),
  I would say that using boundary tracing is strictly advantageous.
  There is the possibility of obtaining *additional* results cheaply;
  at worst, we have what we already have.
  ----
++++++

### Chapter~7 ###

++++++{.top-level}
1.{#2-7-discrepancy}
  """"{.examiner}
  Pg~112: You notice a discrepancy of \>10% in the re-entrant wedge.
  Can you comment on why this might be?
  """"
  ----
  More refinement is required, per the "further investigation".
  A lot of unexpected behaviour is possible
  for the Laplace--Young equation in a re-entrant wedge.
  ----

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

### Chapter~8 ###

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

### Chapter~9 ###

++++++{.top-level}
1.{#2-9-alternative}
  """"{.examiner}
  General: The advantage you are selling for boundary tracing is
  it is an alternative to solving PDEs numerically.
  However, you still have to solve ODEs numerically
  and also the method is very restrictive as your analysis showed.
  Do you think this is a method that will be used practically?
  """"

2.{#2-9-flow}
  """"{.examiner}
  General: Have you considered Poiseuille flow in pipes of 2D cross-section?
  This is Laplace's equation and there is great interest in polygonal pipes.
  """"

3.{#2-9-contributions}
  """"{.examiner}
  General: Can you summarize your new contributions
  to the field of boundary tracing?
  There is a lot of reference to [39], [2].
  """"
++++++

### Appendix~C ###

++++++{.top-level}
1.{#2-c-conformal}
  """"{.examiner}
  General: The application to conformal mapping seems interesting
  and I'm surprised it wasn't explored further in the thesis
  seeing the immense application complex variables has for Laplace's equation.
  Can you comment more on this.
  """"
++++++
