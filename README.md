# oteissonniere/homebrew-rone

Homebrew tap for [rone](https://github.com/oteissonniere/rone) — a small Rust CLI that makes System One decision models pleasant to use from the command line.

## Installation

```sh
brew tap oteissonniere/homebrew-rone
brew trust oteissonniere/homebrew-rone   # Homebrew 7 requires explicit trust for third-party taps
brew install rone
```

The `brew trust` step is a one-time requirement of Homebrew 7: it marks the
tap as trusted so that formulas from it can be installed.

The formula installs the prebuilt macOS binary (Apple Silicon or Intel, selected automatically at install time) published in each [GitHub release](https://github.com/oteissonniere/rone/releases), together with the six bundled presets: compliance, escalation, intent, sentiment, severity and triage.

## Configuration

- Config file: `~/.config/rone/rone.toml` (profiles: host, model, API key)
- Personal presets: `~/.config/rone/presets/` (they take precedence over the bundled presets with the same name)

See the [project README](https://github.com/oteissonniere/rone#readme) for full usage.

## Updating

Each new rone release bumps the formula in this tap. To update an existing install:

```sh
brew upgrade rone
```
