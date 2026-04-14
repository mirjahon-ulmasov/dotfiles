---
name: plan
description: Break a feature or project into phased, well-scoped implementation issues. Use when starting a new feature, epic, or significant change that needs structured planning.
---
 
Break this feature into a phased implementation plan with clearly scoped issues.
 
## Process
 
1. **Explore first** — Read relevant parts of the codebase before planning. Understand what exists, what patterns are used, and what constraints apply.
 
2. **Define phases** — Group work into sequential phases. Each phase should be independently shippable (the app works after each phase).
 
3. **Create issues** — For each phase, create concrete issues with:
   - Clear title (imperative mood: "Add user search endpoint")
   - What it does (2-3 sentences max)
   - Acceptance criteria (testable checklist)
   - Files likely to be touched
   - Blocked by (which issues must be done first)
 
4. **Identify the critical path** — Mark which issues block others and which can be done in parallel.
 
## Rules
 
- Each issue should be completable in ONE session (< 2 hours of agent work)
- If an issue feels too big, split it
- First issue should always be the smallest possible vertical slice (tracer bullet)
- No issue should require understanding the full plan — it should be self-contained
- Include database migrations as separate issues when schema changes are needed
- Include test issues only if testing is complex enough to warrant its own issue
- Flag risks or unknowns explicitly — don't bury them
 
## Output Format
 
```
## Phase 1: [Name]
### Issue 1.1: [Title]
- **Does:** ...
- **Acceptance criteria:** ...
- **Touches:** ...
- **Blocked by:** nothing
 
### Issue 1.2: [Title]
- **Does:** ...
- **Acceptance criteria:** ...
- **Touches:** ...
- **Blocked by:** 1.1
 
## Phase 2: [Name]
...
```
 
After presenting the plan, ask: "Want me to adjust scope, reorder anything, or start on Issue 1.1?"