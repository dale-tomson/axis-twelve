# Setting Up NPM Automation Token

## Problem
The NPM publish is failing because the account has 2FA enabled and requires an automation token.

## Solution: Create NPM Automation Token

### Step 1: Create Automation Token
1. Go to https://www.npmjs.com/settings/YOUR_USERNAME/tokens
2. Click **"Generate New Token"**
3. Select **"Automation Token"** (important!)
4. Click **"Generate Token"**
5. Copy the token (starts with `npm_`)

### Step 2: Add to GitHub Secrets
1. Go to your GitHub repo: https://github.com/dale-tomson/axis-twelve
2. Click **Settings** tab
3. Click **Secrets and variables** > **Actions**
4. Click **"New repository secret"** (or edit existing `NPM_TOKEN`)
5. Name: `NPM_TOKEN`
6. Value: Paste your NPM automation token
7. Click **"Add secret"**

### Step 3: Re-trigger Release
Once the secret is updated, you can re-trigger the release by:
1. Deleting the tag: `git tag -d v2.1.0 && git push origin :refs/tags/v2.1.0`
2. Recreating: `git tag -a v2.1.0 -m "Release v2.1.0" && git push origin v2.1.0`

## Alternative: Publish Manually

If you prefer, you can publish manually:

```bash
# Build the project
pnpm build

# Login to NPM (only once)
npm login

# Publish
npm publish --access public
```

## Note
- Automation tokens don't expire and don't require 2FA
- Keep your token secure!
- You can revoke tokens anytime from npmjs.com
