# Homebrew Whizpr

Official Homebrew tap for [Whizpr](https://github.com/pistack-swe/Whizpr) - Privacy-focused, on-device speech-to-text for macOS.

## Installation

```bash
brew tap pistack-swe/whizpr
brew install --cask whizpr
```

## What is Whizpr?

Whizpr is a menu bar application that provides on-device speech-to-text transcription for macOS. All processing happens locally using whisper.cpp - no data is ever sent to the cloud.

### Features

- 🎤 Global Shift+1 hotkey for recording
- 🔒 100% private - all processing on-device
- 📋 Auto-copy transcriptions to clipboard
- 🎯 Unobtrusive menu bar interface
- ⚡ Fast and accurate with whisper.cpp
- 🆓 Free and open source

### System Requirements

- macOS 13.0 (Ventura) or later
- Apple Silicon (M1/M2/M3) or Intel Mac
- ~150MB disk space

## Usage

1. Launch Whizpr - it appears as a microphone icon in your menu bar
2. Press **Shift+1** to start recording
3. Speak your text
4. Press **Shift+1** again to stop
5. Your transcription is automatically copied to clipboard
6. Paste anywhere with **Cmd+V**

## Updating

```bash
brew upgrade --cask whizpr
```

## Uninstalling

```bash
# Remove app only
brew uninstall --cask whizpr

# Remove app and all user data
brew uninstall --zap --cask whizpr
```

## Privacy

- No network requests - 100% local processing
- Audio files deleted immediately after transcription
- No analytics or telemetry
- Open source - inspect the code yourself

## Links

- [Source Code](https://github.com/pistack-swe/Whizpr)
- [Issues](https://github.com/pistack-swe/Whizpr/issues)
- [Releases](https://github.com/pistack-swe/Whizpr/releases)

## License

See the [main repository](https://github.com/pistack-swe/Whizpr) for license information.
