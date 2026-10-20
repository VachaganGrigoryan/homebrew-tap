# homebrew-tap

Homebrew casks for [Resources for Mac](https://resources.vachagan.dev), built and updated by the
[release workflow](https://github.com/VachaganGrigoryan/resources-mac/blob/main/.github/workflows/release.yml).

| Cask | App |
|---|---|
| `resources-mac` | **Resources**: a system monitor in the style of GNOME Resources |
| `disk-sweep` | **Disk Sweep**: finds caches, build output and Docker data you can clean up |

```sh
brew install --cask VachaganGrigoryan/tap/resources-mac
brew install --cask VachaganGrigoryan/tap/disk-sweep
```

Both need macOS 13 or later and run natively on Apple Silicon and Intel. Releases are not
notarized, so macOS blocks each app on first launch: open System Settings, then Privacy & Security,
and click Open Anyway.
