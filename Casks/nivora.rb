# Checksum verified with `brew fetch` (0.5.2); not installed through Homebrew. Source of truth: zyvorai/zyvor-nivora packaging/homebrew/nivora.rb.
cask "nivora" do
  version "0.5.2"
  sha256  "9ee24b4386c78d97e6f34fb878341e7e9dca3e775d7c2df2895bd6de0eeba99d"

  url "https://github.com/zyvorai/zyvor-nivora/releases/download/v#{version}/Nivora-#{version}.dmg"
  name "Nivora"
  desc "Native application and network intelligence, observe-first"
  homepage "https://zyvorai.github.io/zyvor-nivora/"

  depends_on arch: :arm64
  depends_on macos: :sonoma

  app "Nivora.app"

  zap trash: [
    "~/.local/share/nivora",
    "~/Library/Group Containers/group.dev.zyvor.nivora",
  ]

  caveats <<~EOS
    This build is unsigned and not notarised. On first launch macOS will block it:
    open System Settings > Privacy & Security and choose "Open Anyway" next to Nivora.
    See https://github.com/zyvorai/zyvor-nivora/blob/main/docs/INSTALL.md
  EOS
end
