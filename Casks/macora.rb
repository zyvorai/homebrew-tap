# Homebrew cask: MACORA.app (signed and notarized by Apple) plus the macora CLI on PATH. Lives in zyvorai/homebrew-tap.
# Version and sha256 are filled in by scripts/update-homebrew.sh when a release is published.
cask "macora" do
  version "0.4.0"
  sha256 "6a29f0274c5696a5dbae99ec739e29d83e7d8c8d3f1853c697cd5123ea041613"

  url "https://github.com/zyvorai/zyvor-macora/releases/download/v#{version}/Macora-#{version}.dmg"
  name "MACORA"
  desc "Explains your network and diagnoses why it is slow"
  homepage "https://zyvorai.github.io/zyvor-macora/"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on arch: :arm64
  depends_on macos: :sonoma

  app "Macora.app"
  # The command line tool ships inside the app bundle.
  binary "#{appdir}/Macora.app/Contents/Resources/macora"

  zap trash: [
    "~/Library/Preferences/dev.zyvor.macora.plist",
    "~/Library/Saved Application State/dev.zyvor.macora.savedState",
  ]
end
