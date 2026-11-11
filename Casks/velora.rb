# Homebrew cask: Velora.app (signed/notarized DMG from zyvorai/velora releases).
cask "velora" do
  version "0.4.3"
  sha256 "72f9dc2886cc795545d9325a958202aad21b93a8dc5a19847c952b574d2fe735"

  url "https://github.com/zyvorai/velora/releases/download/v#{version}/Velora-#{version}.dmg"
  name "Velora"
  desc "VMs, MLX models, Kubernetes, FluxVM and Kairon on Apple silicon"
  homepage "https://zyvorai.github.io/velora/"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on arch: :arm64
  depends_on macos: :tahoe

  app "Velora.app"

  zap trash: [
    "~/Library/Application Support/Velora",
    "~/Library/Preferences/dev.zyvor.velora.plist",
    "~/Library/Saved Application State/dev.zyvor.velora.savedState",
  ]

  caveats <<~EOS
    Personal, home, learning and non-production use are free under the BSL.
    Production business use needs Velora Pro (₹7,299 / Mac / year, ~US$86).
    Buy (Cashfree, India + international cards):
      https://payments.cashfree.com/forms/zyvor-velora
    Docs: https://zyvorai.github.io/velora/#pricing
  EOS
end
