---
name: tdd
description: Implement a feature using strict test-driven development. Use when building new features, fixing bugs, or refactoring code. Forces a red-green-refactor cycle.
---
 
Follow a strict TDD red-green-refactor cycle for every change. Never skip steps.
 
## Workflow
 
1. **Confirm the interface** — Before writing anything, confirm what public interface (function signatures, API endpoints, component props) will change or be created. Ask if unclear.
 
2. **RED — Write a failing test first**
   - Write the smallest possible test that describes the next piece of behavior
   - Run the test — confirm it FAILS
   - If it passes, the test is wrong or the behavior already exists
 
3. **GREEN — Make it pass**
   - Write the MINIMUM code to make the test pass
   - No extra logic, no premature abstractions, no "while I'm here" changes
   - Run the test — confirm it PASSES
 
4. **REFACTOR — Clean up**
   - Improve the code WITHOUT changing behavior
   - Look for: duplication, naming, extracted functions, simplified conditionals
   - Run ALL tests — confirm everything still PASSES
 
5. **Repeat** — Go back to step 2 for the next behavior
 
## Rules
 
- Never write production code without a failing test first
- One behavior per test — tests should have ONE reason to fail
- Test names describe behavior, not implementation: `should reject expired tokens` not `test validateToken`
- Prefer real implementations over mocks. Only mock: external APIs, databases, time, randomness
- If you must mock, mock at the boundary — not deep inside the module
- Keep the red-green-refactor loop TIGHT — small steps, fast feedback
- After every 3-5 cycles, pause and look at the bigger picture: is the design emerging cleanly?
 
## Refactoring Philosophy
 
- Deepen modules: thin public interface, rich internal implementation
- If a module has more surface area than depth, it's too shallow — combine or restructure
- Extract when you see duplication, not before
- Inline when an abstraction isn't earning its complexity cost
- Tests protect you during refactoring — if you're scared to refactor, you need more tests
 
## When Done
 
- Run the full test suite one final time
- Report: number of tests added, behaviors covered, any design decisions made during refactoring