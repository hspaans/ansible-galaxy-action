# ansible-galaxy-action

GitHub Action for Ansible Galaxy

## Usage

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
        uses: hspaans/ansible-galaxy-action@v0.2.9
        with:
          api_key: ${{ secrets.galaxy_api_key }}
```
