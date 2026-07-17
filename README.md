# Homebrew Tap

Ali Elsokary's Homebrew tap.

## Install

```sh
brew install --cask alielsokary/tap/caskhub
```

Or tap first, then install:

```sh
brew tap alielsokary/tap
brew install --cask caskhub
```

## Casks

| Cask | Description |
| ---- | ----------- |
| [`caskhub`](Casks/caskhub.rb) | [CaskHub](https://github.com/alielsokary/CaskHub) — native GUI for Homebrew casks |

CaskHub updates itself via Sparkle (`auto_updates true`), so `brew upgrade`
leaves it alone unless you pass `--greedy`.
