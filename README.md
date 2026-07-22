# homebrewtap

Homebrew tap for gh-notch and other GH open-source tools.

The repo is named `homebrewtap`, not `homebrew-tap`, so Homebrew cannot
infer it from the tap name. Pass the URL explicitly:

```bash
brew tap aymandakirgh/tap https://github.com/aymandakirgh/homebrewtap
brew install --cask gh-notch
```
