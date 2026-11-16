<h1 align="center">Homebrew tap</h1>
<p align="center">Mac menu bar tools by Alparslan Semiz, installable with Homebrew.</p>

<p align="center"><b>Install:</b> <code>brew install alparslansemiz/tap/serit</code></p>

```sh
brew tap alparslansemiz/tap                # optional; brew install taps it for you
brew install alparslansemiz/tap/serit      # Touch Bar that stays put
brew install alparslansemiz/tap/veda       # quit apps when their last window closes
```

| Formula | What it does | Project |
| --- | --- | --- |
| `serit` | Touch Bar app: dock, now playing, volume, brightness, weather | [AlparslanSemiz/Serit](https://github.com/AlparslanSemiz/Serit) |
| `veda` | Quits a Mac app when you close its last window | [AlparslanSemiz/Veda](https://github.com/AlparslanSemiz/Veda) |

Both build from source on your Mac, so they need Apple's Command Line Tools (`xcode-select --install`). Start them with `brew services start serit` or `brew services start veda`, then allow them under System Settings → Privacy & Security → Accessibility.

Update with `brew update && brew upgrade serit veda`. Remove with `brew uninstall serit veda`.
