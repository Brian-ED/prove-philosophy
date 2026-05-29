# Proving philosophy
My goal is creating tools to describe my understanding of *the* universe.

These tools for understanding the universe are made with the
[theorem prover](https://en.wikipedia.org/wiki/Automated_theorem_proving) Agda.
I assume whatever the Agda Theorem Prover assumes by default, which
I believe means a bit of modern math, including but not limited to
[HoTT](https://en.wikipedia.org/wiki/Homotopy_type_theory)
to make definitions and inferences with. I say "believe" because I
do not know everything the Agda theorem prover assumes to be true.

I will explain all code in this document with the assumption
that the reader does not have any knowledge of Agda,
Formal mathematics, or philosophy. A bit of programming experience
will help a lot though. If you have a hard time understanding
anything in this document, feel free to contact me.
Also, when I am lazy in explaining a broad topic, I link to explanations on
[Wikipedia](https://en.wikipedia.org/wiki/Wikipedia) or similar.

Agda is designed to allow code to be placed inside markdown files,
which can then be verified/proved/demonstraited directly.
I will be taking full advantage of this feature, so that
all code you see here can be ran and verified.

This document will formally/mathematically/objectively define words using
the Agda programming language, and I will provide context
for these definitons when it's practical. I am essentially starting off
by creating a dictionary. Whenever I am using an Agda-defined
word, I highlight it like so: `Highlighted text`.

I will start out using normal/regular/understandable english
with a lot of slashes to make sure a reader can figure out
what I mean. Slashes in english are a short way to list synonyms,
and 3 synonyms are useful because if one word is missinterpreted,
the other two words should correct the missinterpretation.

Agda code requires a module name:
```agda
open import Cubical.Core.Primitives -- TODO
open import Cubical.Core.Glue
open import Cubical.Data.Bool

module README
```

Agda allows listing assumptions after the above module decloration.
These will be used to make further proofs about the universe,
inferred directly from assumptions.

First assumption is that there are things.
```agda
  (Thing : Type)
```
You can read the code above as `Thing is a Type`
by understanding that `name : X` in Agda always means `name is a X`.
`Type` is an Agda way to describe most pools/groups/sets of stuff,
so `Giraff : Type` defines `Giraff` to be the pool/group/set of all cats.
From now on, instead of saying pool/group/set, I will just say `Type`.

Since the above is the first assumption,
I will give a lot of detail about
what you should be aware of.

Agda allows me to define new words like `Thing` by
just saying that it's some "Type". Definitions don't *have*
to be assumptions, but `Thing` is one because I don't
want to define what stuff can appear in the Type, since
I am unable to describe all things.

Now, I've defined `Thing` as a starting point, but a skeptical reader
should be confused by what *exactly* I mean by a `Thing`.
Like are `Thing`s only physical? Is `Type` a `Thing`?

What I mean by `Thing` is that: whatever can potentially exist
in any possible universe/world/existance is a `Thing`.
To answer if things are physical, well, they don't neccessarily have to be.
A dog is a thing, but a ghost is also a thing. By a ghost, I mean
some person who moves around without being able to interact with any
`Thing`s besides itself. To answer if `Type` is a thing, well, no,
because it is not a part of the universe I am describing.
I could instead describe a universe which also has Agda inside it
and then this agda has a "Type", but this "Type" is not the same
as the literal `Type`. The key difference is that the literal `Type`
is a concept/notion/abstraction that's used to describe, so is
considered outside anything that's being described.


My next assumption is that some `Thing`s are `Sensations`.
By my earlier explanation, I hope it's obvious
why sensations are things, since they could exist.
```agda
  (Sensation : Thing → Type)
```
You know the drill, I will now explain `Sensation` reasonably precicely.
`Sensation`s are possible inputs to a being. I need to *assume* these are things,
and cannot prove it, because `Sensation`s don't neccessarily *have to* be `Thing`s.
If sensations were impossible, then they would not be `Thing`s, since
`Thing`s possibly exist by definition. However, dear reader,
*you* do know that `Sensation`s are `Thing`s.



I won't assume any definition of existance yet because
a thing could exist at some moments in time and not in others.
So at least a notion of time has to be defined before being able
to define existance, but I want a reader to also consider the
possibility that other factors could change if something exists or not.
Consider a `Thing` that is outside our world looking in. This thing
is theoretically not affected by our time. Notice how I'm very
intentionally not saying that it's possible or impossible that
things can exist outside time, since I cannot prove either way yet.

```agda
  where

-- In the percieving of a threat, one can respond

-- Change
--data _»_ : (a b : Universe) → Type where

```
