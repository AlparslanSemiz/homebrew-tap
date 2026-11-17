<h1 align="center">Homebrew tap</h1>
<p align="center">Mac tools by Alparslan Semiz, installable with Homebrew.</p>

<p align="center"><b>Install:</b> <code>brew install alparslansemiz/tap/serit</code></p>

```sh
brew tap alparslansemiz/tap                # optional; brew install taps it for you
brew install alparslansemiz/tap/serit      # Touch Bar that stays put
brew install alparslansemiz/tap/veda       # quit apps when their last window closes
brew install alparslansemiz/tap/kumanda    # use your Mac with a game controller
```

| Formula | What it does | Project |
| --- | --- | --- |
| `serit` | Touch Bar app: dock, now playing, volume, brightness, weather | [AlparslanSemiz/Serit](https://github.com/AlparslanSemiz/Serit) |
| `veda` | Quits a Mac app when you close its last window | [AlparslanSemiz/Veda](https://github.com/AlparslanSemiz/Veda) |
| `kumanda` | Use your Mac with a game controller | [AlparslanSemiz/Kumanda](https://github.com/AlparslanSemiz/Kumanda) |

All three build from source on your Mac, so they need Apple's Command Line Tools (`xcode-select --install`). Start them with `brew services start serit` (or `veda`, `kumanda`), then allow them under System Settings → Privacy & Security → Accessibility.

Update with `brew update && brew upgrade serit veda kumanda`. Remove with `brew services stop serit veda kumanda` followed by `brew uninstall serit veda kumanda`.
