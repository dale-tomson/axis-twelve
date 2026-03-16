# ⚠️ BEFORE YOU COMMIT - MANDATORY CHECKLIST

**READ THIS BEFORE MAKING ANY COMMIT TO THE REPOSITORY.**

## Step 1: Identify Your Change Type

What are you changing?

- [ ] CI/CD workflows (`.github/workflows/`)
- [ ] `package.json` (version, scripts, config)
- [ ] Build configuration
- [ ] New feature
- [ ] Bug fix
- [ ] Documentation
- [ ] Version bump

## Step 2: Branch Check

### If you answered CI/CD, package.json, or build config:

**YOU MUST CREATE A FEATURE BRANCH.**

```bash
# Check current branch
git branch

# If you're on ver-2.x, STOP and create feature branch:
git checkout -b chore/descriptive-name
```

**DO NOT PROCEED UNTIL YOU'RE ON A FEATURE BRANCH.**

### If you answered version bump:

**YOU MUST:**
1. Create feature branch: `git checkout -b chore/bump-version-x-y-z`
2. Update `README.md` with module sizes
3. Update `CHANGELOG.md`
4. Commit all three files together

## Step 3: Documentation Check

### Did you change module sizes or add modules?

**YOU MUST UPDATE README.md:**

```bash
# Get current sizes
pnpm build
ls -lh dist/modules/*.min.css

# Update README.md module table
# Update full bundle size
```

### Did you bump the version?

**YOU MUST UPDATE:**
1. ✅ `package.json` (version field)
2. ✅ `README.md` (module sizes)
3. ✅ `CHANGELOG.md` (new version section)

## Step 4: Commit Message Check

Your commit message MUST follow this format:

```
type(scope): description
```

**Examples:**
- ✅ `chore: Update workflows`
- ✅ `chore(ci): Fix Node.js version`
- ✅ `docs(readme): Update module sizes`
- ✅ `feat(components): Add new component`

**NEVER USE:**
- ❌ `update stuff`
- ❌ `fix thing`
- ❌ `changes`
- ❌ `wip`

## Step 5: Final Verification

Before running `git push`, verify:

- [ ] I am on a feature branch (for CI/CD changes)
- [ ] I have NOT pushed directly to `ver-2.x`
- [ ] README.md has current module sizes (if version bump)
- [ ] CHANGELOG.md is updated (if version bump)
- [ ] Commit message is properly formatted
- [ ] Linting passes: `pnpm lint`
- [ ] Build passes: `pnpm build`

## Step 6: Push Strategy

### If on feature branch:
```bash
git push origin chore/your-branch-name
# Then create PR on GitHub
```

### If on ver-2.x with CI/CD changes:
**STOP! You did it wrong.**

Go back and:
1. Create feature branch
2. Cherry-pick or move your changes
3. Push to feature branch
4. Create PR

## Common Mistakes to AVOID

❌ **Pushing CI/CD changes directly to ver-2.x**
- This is FORBIDDEN
- Always use feature branch + PR

❌ **Bumping version without updating README**
- Module sizes MUST be current
- Run `pnpm build` and get sizes

❌ **Bumping version without CHANGELOG**
- Every version needs changelog entry
- List what changed

❌ **Vague commit messages**
- Use conventional commits format
- Be specific about what changed

## If You're Unsure

1. Stop and read `.agents/main-instructions.md`
2. Check `.agents/skills/branching.md`
3. Check `.agents/skills/versioning.md`
4. Ask maintainers
5. Look at recent commits for examples

## Remember

**IT'S BETTER TO:**
- Ask questions
- Double-check
- Follow the process
- Take extra time

**THAN TO:**
- Break the build
- Have commits rejected
- Need to redo work
- Block releases

**QUALITY OVER SPEED. FOLLOW THE INSTRUCTIONS.**
