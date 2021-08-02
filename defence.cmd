%%
%title
  Ph.D. Defence
%resources
  <script src="paged.polyfill.js"></script>
%css a~~~~~~~~
  :root {
    --solid-line: 1px solid black;
    --solid-line-thick: 3px solid black;
    --dark-grey: #595959;
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
    color: var(--dark-grey);
    border-color: var(--dark-grey);
    font-family: Arimo, sans-serif;
  }
~~~~~~~~
%%


# %title #


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

8.{#1-extend}

  """"{.examiner}
  If you had funding for another 6 months of research,
  what would you do to extend this study?
  """"
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

### Revisions ###
