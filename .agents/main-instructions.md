# ⚠️ MANDATORY INSTRUCTIONS FOR AXIS TWELVE DEVELOPMENT

**THESE INSTRUCTIONS ARE MANDATORY AND MUST BE FOLLOWED IN ALL CASES.**
**FAILURE TO FOLLOW THESE INSTRUCTIONS WILL RESULT IN REJECTED COMMITS.**

## 🚨 CRITICAL RULE #1: BRANCHING FOR CI/CD CHANGES

### ⛔ ABSOLUTELY NEVER DO THIS:

```bash
# WRONG - This is FORBIDDEN
git checkout ver-2.x
# Edit .github/workflows/*.yml or package.json
git commit -m "chore: update something"
git push origin ver-2.x
```

**IF YOU PUSH CI/CD CHANGES DIRECTLY TO ver-2.x, YOUR COMMIT WILL BE REJECTED.**

### ✅ ALWAYS DO THIS INSTEAD:

```bash
# CORRECT - This is REQUIRED
git checkout ver-2.x
git pull
git checkout -b chore/descriptive-name  # STEP 1: CREATE FEATURE BRANCH

# Make your changes
# Edit files...

git add .
git commit -m "chore: descriptive message"
git push origin chore/descriptive-name  # STEP 2: PUSH TO FEATURE BRANCH
# STEP 3: CREATE PULL REQUEST ON GITHUB
# STEP 4: WAIT FOR REVIEW AND MERGE
# STEP 5: DELETE BRANCH AFTER MERGE
```

## 🚨 CRITICAL RULE #2: VERSION BUMPS REQUIRE DOCUMENTATION UPDATES

**WHEN CHANGING VERSION IN package.json, YOU MUST:**

1. **Update README.md with current module sizes:**

   ```bash
   pnpm build
   ls -lh dist/modules/*.min.css
   # Update the table in README.md with actual sizes
   ```

2. **Update CHANGELOG.md:**
   - Add version section
   - List all changes

3. **Create commit with all three files:**
   ```bash
   git add package.json README.md CHANGELOG.md
   git commit -m "chore: Bump version to X.Y.Z"
   ```

## 🚨 CRITICAL RULE #3: MODULE SIZE DOCUMENTATION

**EVERY TIME YOU BUILD OR CHANGE MODULES, YOU MUST:**

1. Get new sizes: `ls -lh dist/modules/*.min.css`
2. Update README.md module table
3. Update full bundle size in README

**Example update:**

```markdown
| Module           | Size (min) | Description       |
| ---------------- | ---------- | ----------------- |
| **axis-buttons** | 6.2KB      | Button components |
```

## BRANCHING STRATEGY

### For CI/CD Changes (workflows, package.json, build config):

1. **ALWAYS** create feature branch: `chore/<description>`
2. Make changes on feature branch
3. Commit and push to feature branch
4. Create Pull Request
5. Wait for review and merge
6. Delete branch after merge

### For Features:

1. Create feature branch: `feature/<description>`
2. Implement feature
3. Test locally
4. Create PR
5. Merge after review

### For Documentation:

1. Create branch: `docs/<description>`
2. Update docs
3. Create PR
4. Merge

## COMMIT MESSAGE FORMAT

```
<type>(<scope>): <description>

[optional body]

[optional footer]
```

**Types:**

- `feat` - New feature
- `fix` - Bug fix
- `chore` - Maintenance (CI/CD, config)
- `docs` - Documentation
- `refactor` - Code refactoring
- `test` - Tests
- `ci` - CI configuration
- `build` - Build system

**Good examples:**

```
chore: Update Node.js to v24
chore(ci): Update workflows for caching
feat(components): Add carousel component
docs(readme): Update module sizes for v2.1.0
fix(buttons): Correct focus state color
```

**Bad examples (NEVER USE):**

```
update stuff
fix thing
changes
wip
```

## PRE-COMMIT CHECKLIST

Before ANY commit, verify:

- [ ] Branch name follows convention (`type/description`)
- [ ] Changes are on correct branch (feature branch for CI/CD)
- [ ] Linting passes: `pnpm lint`
- [ ] Build passes: `pnpm build`
- [ ] README updated with module sizes (if applicable)
- [ ] CHANGELOG updated (if version bump)
- [ ] Commit message follows format

## WORKFLOW EXAMPLES

### Updating Workflows (CI/CD):

```bash
git checkout ver-2.x
git pull
git checkout -b chore/update-workflows  # ← STEP 1: FEATURE BRANCH

# Edit .github/workflows/*.yml

git add .github/workflows/
git commit -m "chore: Update workflows"
git push origin chore/update-workflows  # ← STEP 2: PUSH TO BRANCH
# ← STEP 3: CREATE PR ON GITHUB
# ← STEP 4: WAIT FOR MERGE
# ← STEP 5: DELETE BRANCH
```

### Bumping Version:

```bash
git checkout ver-2.x
git pull
git checkout -b chore/bump-version-2-2-0  # ← STEP 1: FEATURE BRANCH

# 1. Update package.json version to "2.2.0"
# 2. Run: pnpm build
# 3. Get sizes: ls -lh dist/modules/*.min.css
# 4. Update README.md with new sizes
# 5. Update CHANGELOG.md

git add package.json README.md CHANGELOG.md
git commit -m "chore: Bump version to 2.2.0"
git push origin chore/bump-version-2-2-0  # ← STEP 2: PUSH TO BRANCH
# ← STEP 3: CREATE PR
# ← STEP 4: WAIT FOR MERGE
```

## CONSEQUENCES OF NOT FOLLOWING INSTRUCTIONS

If you don't follow these instructions:

1. Your commits will be rejected
2. CI/CD pipeline will fail
3. Releases will break
4. You will need to redo the work properly

## REMINDER

**BEFORE PUSHING ANY COMMIT, ASK YOURSELF:**

1. ✅ Am I on a feature branch? (for CI/CD changes)
2. ✅ Did I update README with module sizes? (for version bumps)
3. ✅ Did I update CHANGELOG? (for version bumps)
4. ✅ Is my commit message properly formatted?
5. ✅ Did I create a PR? (for feature branches)

**IF THE ANSWER TO ANY OF THESE IS NO, DO NOT PUSH.**

## QUESTIONS?

If you're unsure about anything:

1. Check `.agents/skills/branching.md`
2. Check `.agents/skills/versioning.md`
3. Check `.agents/skills/documentation.md`
4. Look at recent commits for examples
5. Ask maintainers

**REMEMBER: IT'S BETTER TO ASK THAN TO BREAK THE BUILD.**
