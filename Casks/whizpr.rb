# Homebrew Cask formula for Whizpr
#
# Installation:
#   brew tap pistack-swe/whizpr
#   brew install --cask whizpr
#
# Note: This app is unsigned. Homebrew will remove the quarantine attribute.

cask "whizpr" do
  version "1.4.0"
  sha256 "beeea0dea9f2c5f20bae659c6753264e4ce819734c8a10f6385b1a76a0fda0a7"

  url "https://github.com/pistack-swe/Whizpr/releases/download/v#{version}/Whizpr-#{version}.dmg"
  name "Whizpr"
  desc "Privacy-focused, on-device speech-to-text for macOS"
  homepage "https://github.com/pistack-swe/Whizpr"

  # Requires macOS 13.0 (Ventura) or later
  depends_on macos: ">= :ventura"

  app "Whizpr.app"

  # Remove quarantine attribute so unsigned app can run without warnings
  postflight do
    system_command "/usr/bin/xattr",
                   args: ["-cr", "#{appdir}/Whizpr.app"],
                   sudo: false
  end

  caveats <<~EOS
    Whizpr is an unsigned app. The quarantine attribute has been
    removed automatically during installation.

    If you still see a security warning on first launch:
      Right-click on Whizpr.app and select "Open"

    Required permissions (grant when prompted):
      - Microphone Access: for recording audio
      - Input Monitoring: for right Option key global hotkey
      - Accessibility (optional): for auto-paste feature

    Usage:
      - Press and hold right Option key to record
      - Transcription is automatically copied to clipboard
      - Enable auto-paste in Settings for automatic pasting (requires Accessibility permission)
      - Or paste manually with Cmd+V

    All processing happens locally - no data is sent to the cloud.
  EOS

  zap trash: [
    "~/Library/Application Support/Whizpr",
    "~/Library/Preferences/com.whizpr.Whizpr.plist",
    "~/Library/Caches/com.whizpr.Whizpr",
  ]
end
