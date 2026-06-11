# gh-notch — free, open-source macOS notch utility with a local-first AI command bar.
#
# Tracks the latest GitHub release via a stable asset name (gh-notch.dmg), so no
# per-version edits are needed. Early builds are unsigned (sha256 :no_check): on
# first launch macOS may warn — right-click the app -> Open -> Open, or run
# `xattr -dr com.apple.quarantine /Applications/gh-notch.app`.
#
#   brew tap aymandakir-gh/tap
#   brew trust --cask aymandakir-gh/tap/gh-notch   # newer Homebrew requires this
#   brew install --cask gh-notch
cask "gh-notch" do
  version :latest
  sha256 :no_check

  url "https://github.com/aymandakir-gh/gh-notch/releases/latest/download/gh-notch.dmg"
  name "gh-notch"
  desc "Open-source macOS notch utility with a local-first AI command bar"
  homepage "https://github.com/aymandakir-gh/gh-notch"

  depends_on macos: ">= :sonoma"

  app "gh-notch.app"

  zap trash: [
    "~/Library/Preferences/company.gh.notch.plist",
  ]
end
