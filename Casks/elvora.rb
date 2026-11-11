# Homebrew cask: Elvora.app (menu-bar companion). CLI/agent: Formula/elvora.rb.
cask "elvora" do
  version "0.4.1"
  sha256 "e435d60d552a0c381114be4600838dd8f1e982bba6cbc233c4e40b9ffdf5a3e1"

  url "https://github.com/zyvorai/elvora/releases/download/v#{version}/Elvora-#{version}.dmg"
  name "Elvora"
  desc "Menu-bar companion for the Apple infrastructure cloud"
  homepage "https://zyvorai.github.io/elvora/"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on arch: :arm64
  depends_on macos: :sonoma

  app "Elvora.app"

  zap trash: [
    "~/Library/Application Support/Elvora",
    "~/Library/Preferences/dev.zyvor.elvora.plist",
  ]

  caveats <<~EOS
    Elvora is commercially licensed ($49 per enrolled Mac / year).
    Buy (Cashfree, India + international cards):
      https://payments.cashfree.com/forms/zyvor-elvora
    Install the agent/CLI with: brew install zyvorai/tap/elvora
  EOS
end
