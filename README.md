# homebrew-tap

Homebrew casks for [Resources for Mac](https://resources.vachagan.dev), built and updated by the
[release workflow](https://github.com/VachaganGrigoryan/resources-mac/blob/main/.github/workflows/release.yml).

| Cask | App |
|---|---|
| `resources-mac` | **Resources**: a system monitor in the style of GNOME Resources |
| `disk-sweep` | **Disk Sweep**: finds caches, build output and Docker data you can clean up |
| `mnome` | **[Mnome](https://github.com/VachaganGrigoryan/Mnome)**: GNOME Shell's top bar, overview, workspaces, tiling and gestures (Apple Silicon, macOS 15 or later) |

```sh
brew trust VachaganGrigoryan/tap   # once: Homebrew asks before loading casks from a tap
brew install --cask VachaganGrigoryan/tap/resources-mac
brew install --cask VachaganGrigoryan/tap/disk-sweep
brew install --cask VachaganGrigoryan/tap/mnome
```

Resources and Disk Sweep need macOS 13 or later and run natively on Apple Silicon and Intel. Releases are not
notarized, so macOS blocks each app on first launch: open System Settings, then Privacy & Security,
and click Open Anyway.
