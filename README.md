# ansible-galaxy-action

## Usage

GitHub Action to import role into Ansible Galaxy.

## Parameters

Following parameters can be used as `step.with` keys:

| Name      | Type   | Default | Description            |
| --------- | ------ | ------- | ---------------------- |
| `api_key` | String |         | Ansible Galaxy API-key |

## Example

```yaml
---
name: Publish on Ansible Galaxy

on:
  push:
    tags:
      - "v*"
    branches:
      - master

jobs:
  publish:
    name: Publish on Ansible Galaxy
    runs-on: ubuntu-latest

    steps:
      - name: Checkout Code
        uses: actions/checkout@v2

      - name: Release Ansible Role to Galaxy
        uses: hspaans/ansible-galaxy-action@v0.3.6
        with:
          api_key: ${{ secrets.galaxy_api_key }}
```

## Keep up-to-date with GitHub Dependabot

[GitHub Actions has native support](https://docs.github.com/en/github/administering-a-repository/configuration-options-for-dependency-updates#package-ecosystem) for [Dependabot](https://docs.github.com/en/github/administering-a-repository/keeping-your-actions-up-to-date-with-github-dependabot),
to enable it on your GitHub repo all you need to do is add the `.github/dependabot.yml` file:

```yaml
---
version: 2
updates:
  - package-ecosystem: github-actions
    directory: /
    schedule:
      interval: daily
```

## Limitation

This action is only available for Linux [virtual environments](https://help.github.com/en/articles/virtual-environments-for-github-actions#supported-virtual-environments-and-hardware-resources).
