module NAP
  (Action : Set)
  (try-to-actualize-conflicts : Action)
  (try-to-actualize-contradictory-actions : Action)
  (try-to-do-that-which-one-is-not-able-to-do : Action)
  (do-that-which-one-is-not-able-to-do-because-one-is-not-able-to-that-which-one-is-not-able-to-do : Action)
  (one-should : (a : Action) → Bool)
  where

open import Data.Bool using (true; false; Bool; _∧_; _∨_; not)


_and_ = _∧_

a-conflict-occurs-when-it-is-attempted-to-simultaneously-actualize-contradictory-actions = true
contradictory-actions-cannot-simultaneously-be-actualized = true
one-is-not-able-to-that-which-one-is-not-able-to-do = true
one-cannot-be-expected-to-do-that-which-one-is-not-able-to-do = true

{-# NON_TERMINATING #-} -- TODO: Make this function be detected as terminating
if_then_else ((one-should try-to-actualize-conflicts) and )
one-should try-to-actualize-contradictory-actions = a-conflict-occurs-when-it-is-attempted-to-simultaneously-actualize-contradictory-actions and (one-should try-to-actualize-conflicts)
one-should try-to-do-that-which-one-is-not-able-to-do = contradictory-actions-cannot-simultaneously-be-actualized and (one-should try-to-actualize-contradictory-actions)

one-should do-that-which-one-is-not-able-to-do-because-one-is-not-able-to-that-which-one-is-not-able-to-do = not ((one-should try-to-do-that-which-one-is-not-able-to-do) and (one-is-not-able-to-that-which-one-is-not-able-to-do and one-cannot-be-expected-to-do-that-which-one-is-not-able-to-do))

-- TODO: Eliminate assumptions.
--    Rephrase the assumptions as function calls, then define the functions
-- Assumtion 1: These propositions are true
-- Assumtion 2: Every conclusion is done via an _∧_, I need to prove that the given statement is equivilant to an _∧_



-- Conflict = the attempt to actualize contradictory actions, e.g., petting the dog while not petting the dog.
--
-- Argument 1.
-- P1: A conflict occurs when it is attempted to simultaneously actualize contradictory actions.
-- P2: One should try to actualize conflicts.
-- C1: Therefore, one should try to actualize contradictory actions. [From P1 and P2]
-- P3: However, contradictory actions cannot simultaneously be actualized.
-- C2: Therefore, one should try to do that which one is not able to do. [From P3 and C1]
-- P4: However, one is not able to that which one is not able to do.
-- P5: One cannot be expected to do that which one is not able to do.
-- C3: Therefore, it is false to say that one should do that which one is not able to do, because one is not able to that which one is not able to do [From P4, P5, and C2]
---
-- Argument 2.
-- P1: A conflict occurs when it is attempted to simultaneously actualize contradictory actions.
-- P2: Conflicts should not be resolved.
-- C1: Therefore, one should not try to resolve the problem of attempting to actualize contradictory actions. [From P1 and P2]
-- P3: However, conflict must be resolved as contradictory actions are unactualizable. [Demonstrated in Argument 1]
-- P4: Actualized action presumes conflict resolution [Demonstrated in Argument 1]
-- C2: Therefore, conflicts must be resolved [From P3 and P4]
--
-- Argument 3a.
-- P1: Aggression is the initiation of conflict.
-- P2: Conflicts should be resolved aggressively.
-- C1: Therefore, the initiation of conflict should be resolved through the initiation of conflict. [From P1 and P2]
-- P3a: However, if one is to resolve a conflict by initiating a conflict, one would need to resolve that conflict that one just initiated by initiating a new conflict that one has to… ad infinitum. [To avoid infinite regress, see P3b]
-- P3b: However, the initiation of conflict does not resolve initiation of conflict as this itself is an initiation of conflict.
-- C2: Therefore, the initiation of conflict should not be resolved through aggression. [From P3a and P3b]
--
-- Argument 3b.
-- P1: Aggression is the initiation of conflict.
-- P2: Conflicts can be resolved aggressively.
-- C1: Therefore, the initiation of conflict can be resolved through the initiation of conflict. [From P1 and P2]
-- P3: However, the initiation of conflict cannot be an initiation of an already initiated conflict.
-- P4: It is not possible to do that which cannot be done.
-- C2: Therefore, the initiation of conflict cannot be solved through aggression as it is not possible to aggress in the first place. [From C1, P3, and P4]
-- In defense of P3: An initiation must definitionally be the prime mover as any response to an initiation definitionally would be a retaliation. It cannot be an initiation of a different conflict, since, if this was the case, such a response would necessarily be unrelated to said conflict.
-- (Argument against the fallaciousness of proportionality can be made but is for another time)
