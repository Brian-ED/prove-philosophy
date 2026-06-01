# Proving philosophy
My goal is creating tools to formally describe my understanding of *the* universe.

## Intro
The target audience are people interested in philosophy.
My goal is improving on philosophical writing by
formally definining it as I am writing it.
I read how far mathematics has come in terms of
it's commitment to consistency and rigor.
Then when I read modern philosophy I am incredibly
unimpressed. The modern philosophy I've read
is usually written in a human language like English,
and if it is written using symbols, the symbols are
defined with English words that make hundreads
of implicit assumptions. Another problem is that
modern philosophy branches need unification,
a way to describe all of them in one language
so that one can prove relations between them.

My goal is listing *ALL* my assumptions, and proving
my inferences from the assumptions with the
[theorem prover](https://en.wikipedia.org/wiki/Automated_theorem_proving)
[Agda](https://en.wikipedia.org/wiki/Agda_(programming_language)).

I will explain all code in this document with the assumption
that you don't have any knowledge of Agda, programming, or
formal mathematics. If you have a hard time understanding
anything in this document, feel free to contact me.

I do assume that you read the document in order
from top to bottom so I can avoid repeating myself.
Also, when I am lazy in explaining a broad topic, I link to explanations on
[Wikipedia](https://en.wikipedia.org/wiki/Wikipedia) or similar.

I will start out using normal/regular/understandable english
with a lot of slashes to make sure a reader can figure out
what I mean. I use slashes as a way to list synonyms,
and 3 synonyms are useful because if one word is missinterpreted,
the other two words should correct the missinterpretation.

## Agda Intro
This document will formally/mathematically/objectively define words using
the Agda programming language, and I will provide context
for these definitons when I find it practical.

Agda allows code to be placed inside markdown files like this one,
which can then be verified/proved/demonstraited automatically.
I will be taking full advantage of this feature.
Whenever I am using an Agda-defined word,
I highlight it like so: `Highlighted text`.

I will now informally introduce the neccessary Agda knowledge
needed to understand the Agda code coming shortly.

An Agda Type is a pool/group/set of values.

Agda has "names". Every Agda name in a specific
context has exactly one Type, and multiple names
can share the same Type.

This is the syntax for creating/defining/declaring
a name and what its type is: `Name : Type`.

You can define a `Name`'s value ``


Every Agda name also has a value
that belongs to the name's type.

Note, every value in Agda is from some `Type`, and all `Type`s are values too.
To avoid paradoxes like
[Russell's Paradox](https://en.wikipedia.org/wiki/Russell%27s_paradox),

`Type₀` is from `Type₁`, `Type₁` is from `Type₂`, and so on.

`Type₀` is the `Type` containing/consisting-of/embodying of stuff,
so `Giraff : Type₀` says that `Giraff` is the pool/group/set of all giraffs.
Note, `name : X` doesn't define `name`, only that it is some `X`,
since for it to be a definition it has to be unambiguous.

The syntax `Name : Type` in Agda always means `The word Name is, from now on, some Type`.

## Assumptions
I assume whatever the Agda Theorem Prover assumes by default, which
I believe means a bit of modern math, including but not limited to
[HoTT](https://en.wikipedia.org/wiki/Homotopy_type_theory)
to make definitions and inferences with. I say "believe" because I
do not know everything the Agda theorem prover assumes to be true.

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
  (Thing : Type₀)
```
You can read the code above as `Thing is, from now on, some Type₀`
by understanding that `name : X` in Agda
always means `"name" is, from now on, some X`.

Since `Thing`'s definition is the first assumption,
I will give a lot of detail about
what you should be aware of.

Agda allows me to define new words like `Thing` by
just saying that it's some "Type₀". Definitions don't *have*
to be assumptions, but `Thing` is one because I don't
want to define what elements can appear in it, since
I am unable to describe all things.

Now, I've defined `Thing` as a starting point, but a skeptical reader
should be confused by what *exactly* I mean by a `Thing`.
Like are `Thing`s only physical? Is `Type₀` a `Thing`?
Are an apple and the seed inside it seperate `Thing`s?

What I mean by `Thing` is that: whatever can potentially exist
in any possible universe/world/existance is a `Thing`.

To answer if things are physical, well, they don't neccessarily have to be.
A dog is a thing, but a ghost is also a thing. By a ghost, I mean
some person who moves around without being able to interact with any
`Thing`s besides itself.

To answer if `Type₀` is a `Thing`, well, no,
because it is not a part of the universe I am describing.
I could instead describe a universe which also has Agda inside it
and then this Agda has a "Type₀", but this "Type₀" is not the same
as the literal `Type₀`. The key difference is that the literal `Type₀`
is a concept/notion/abstraction that's used to describe, so is
considered outside anything that's being described.

To answer if an apple and its seed are different `Thing`s,
all you need to consider is if they are exactly the same `Thing`.
Since they aren't, they are different things.


My next assumption is that some `Thing`s are `Sensations`.
By my earlier explanation, I hope it's obvious
why sensations are things, since they could exist.
```agda
  (Sensation : Thing → Type₀)
```
You know the drill, I will now explain `Sensation` reasonably precicely.
`Sensation`s are possible inputs to a being. I need to *assume*
these are things, and cannot prove it, because `Sensation`s don't
neccessarily *have to* be `Thing`s.
If sensations were impossible, then they would not be `Thing`s, since
`Thing`s possibly exist by definition. However, dear reader,
*you* do know that `Sensation`s are `Thing`s.

The following "where" marks the end of the assumptions.
```agda
  where
```

## Inferences

```agda

-- Change
PossibleChange = (InExists OutExists : Thing → Type) → Type₁

-- TODO Temporary goal:
-- In the percieving of a threat, one can respond
```
