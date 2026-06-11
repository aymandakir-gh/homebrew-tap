# gh-notch — free, open-source macOS notch utility with a local-first AI command bar.
#
# Early builds are unsigned (sha256 :no_check). On first launch macOS may warn:
# right-click the app -> Open -> Open. Once releases are notarized this will be a
# normal Gatekeeper-clean install.
#
#   brew tap aymandakir-gh/tap
#   brew install --cask gh-notch
cask "gh-notch" do
  version "0.1.1"
  sha256 :no_check

  url "https://github.com/aymandakir-gh/gh-notch/releases/download/v#{version}/gh-notch-v#{version}.dmg"
  name "gh-notch"
  desc "Open-source macOS notch utility with a local-first AI command bar"
  homepage "https://github.com/aymandakir-gh/gh-notch"

  depends_on macos: ">= :sonoma"

  app "gh-notch.app"

  zap trash: [
    "~/Library/Preferences/company.gh.notch.plist",
  ]
end
