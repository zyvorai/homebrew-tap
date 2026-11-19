# Notarized Nivora 0.5.4 from github.com/zyvorai/nivora releases.
cask "nivora" do
  version "0.5.4"
  sha256  "6765d67f2dae19259b66f6c0e18f7f88db9f0d05be5c9aae2fb5134e2fc49440"

  url "https://github.com/zyvorai/nivora/releases/download/v#{version}/Nivora-#{version}.dmg"
  name "Nivora"
  desc "Native application and network intelligence, observe-first"
  homepage "https://zyvorai.github.io/nivora/"

  depends_on arch: :arm64
  depends_on macos: :sequoia

  app "Nivora.app"

  zap trash: [
    "~/.local/share/nivora",
    "~/Library/Group Containers/group.dev.zyvor.nivora",
  ]

  caveats <<~EOS
    Nivora is signed and notarized by Apple. Free for non-production use.
    The app runs without a key. For a free 30-day trial key, email sales@zyvor.dev. Licences: https://zyvor.dev/buy
    Install notes: https://github.com/zyvorai/nivora/blob/main/docs/INSTALL.md
  EOS
end
