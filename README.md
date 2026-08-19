# project-oxi/homebrew-tap

Homebrew tap for [Oxios](https://github.com/project-oxi/oxios) — Agent Operating System.

## Install

```bash
brew tap project-oxi/tap
brew trust project-oxi/tap   # Homebrew ≥ 6.0 tap-trust gate
brew install oxios
```
Upgrades follow GitHub Releases: `brew upgrade oxios`.

The formula is bumped automatically by the Oxios release workflow
(`release.yml` → `bump-tap` job).

**Note:** releases target Apple Silicon (`aarch64-apple-darwin`) only.
