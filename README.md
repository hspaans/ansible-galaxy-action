# ansible-galaxy-action

GitHub Action for Ansible Galaxy

## Usage

```yaml
name: Release Ansible Role to Galaxy

on:
  push:
    tags:
      - "v*"

jobs:
  build:
    runs-on: ubuntu-latest

    steps:
      - name: Checkout
        uses: actions/checkout@v2

      - name: Release Ansible Role to Galaxy
        uses: hspaans/ansible-galaxy-action@v0.2.6
        with:
          api_key: ${{ secrets.galaxy_api_key }}
```
