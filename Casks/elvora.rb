# Copyright 2026 Zyvor AI Labs · https://zyvor.dev
# SPDX-License-Identifier: LicenseRef-Zyvor-Production-1.0

# Homebrew cask: Elvora.app (menu-bar companion). CLI/agent: Formula/elvora.rb.
cask "elvora" do
  version "0.4.2"
  sha256 "4f564481baf595a5de4696666bc19305d513318359e4e232cee2fdcf8867467a"

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
    Elvora is commercially licensed ($199 per enrolled Mac / year).
    Buy:
      Razorpay: https://rzp.io/rzp/sW0fMhui
    Install the agent/CLI with: brew install zyvorai/tap/elvora
  EOS
end
