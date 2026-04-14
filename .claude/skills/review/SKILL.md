---
name: review
description: Review staged or recent changes like a senior engineer before committing. Catches bugs, security issues, bad patterns, and missed edge cases.
---
 
Review the current changes (staged, unstaged, or recent commits) as a senior engineer would before approving a PR.
 
## Process
 
1. **Get the diff** — Run `git diff` (or `git diff --staged` if there are staged changes) to see what changed.
 
2. **Understand context** — Read surrounding code to understand WHY the change was made, not just WHAT changed.
 
3. **Review for these categories:**
 
   **Correctness**
   - Does the logic actually do what it's supposed to?
   - Are there off-by-one errors, null/undefined risks, race conditions?
   - Are edge cases handled? (empty arrays, zero values, missing fields)
 
   **Security**
   - SQL injection, XSS, auth bypass possibilities?
   - Secrets or tokens accidentally committed?
   - User input properly validated and sanitized?
 
   **Performance**
   - N+1 queries, missing indexes, unbounded loops?
   - Unnecessary re-renders (React), heavy computations without caching?
   - Large payloads without pagination?
 
   **Maintainability**
   - Is the code readable without comments?
   - Are names clear and consistent with the codebase?
   - Any unnecessary complexity or premature abstraction?
 
   **Tests**
   - Are new behaviors tested?
   - Do existing tests still cover the changed code?
   - Are tests testing behavior, not implementation?
 
4. **Report findings**
 
## Output Format
 
For each finding:
```
[SEVERITY] Category — file:line
What: one sentence describing the issue
Why: one sentence explaining the risk
Fix: one sentence suggesting the fix
```
 
Severities:
- 🔴 **BLOCKER** — Must fix before committing (bugs, security, data loss)
- 🟡 **WARNING** — Should fix, will cause problems later
- 🟢 **NIT** — Suggestion for improvement, not blocking
 
End with a summary: "X blockers, Y warnings, Z nits. [Safe to commit / Fix blockers first]"