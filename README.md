# homebrew-tap

Gitpod's tap for Homebrew

## Tapping the repository

To tap this repository, run:

```bash
brew tap gitpod-io/tap
```

## Gitpod CLI

To install Gitpod's command line interface on Linux or macOS, simply install it via this tap:

```bash
brew install gitpod-io/tap/gitpod
```

## Development

To debug formulas locally, use these commands:

```bash
brew remove gitpod # if installed
brew install --verbose --build-from-source ./Formula/gitpod.rb # install from local source
brew audit --strict gitpod # lint the formula
```
