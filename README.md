# Use custom organization repository without installing Gitpod app

What if you want to use Gitpod but your ORG won't install the Gitpod app for you, this can help you in that.

- Create a new token from [here](https://github.com/settings/tokens/new) with scopes of `{repo, admin:org}`
- Copy the token, go to https://gitpod.io/variables
  - Create a new variable called `CUSTOM_GH_TOKEN` with the value of your token, set the scope to `*/*`
- Copy this: https://gitpod.io/#CUSTOM_REPO_URLS=github.com|bashbox|std~github.com|csweichel|lama/https://github.com/gitpod-io/custom_org_repo
  - Specify your repos inside the value of 👆 `CUSTOM_REPO_URLS`
  - It could be separated by `~` for multiple repos.
  - The format is: `<host>|<owner>|<repo-name>`
