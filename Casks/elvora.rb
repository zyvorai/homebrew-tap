# Copyright 2026 Zyvor AI Labs · https://zyvor.dev
# SPDX-License-Identifier: LicenseRef-Zyvor-Production-2.0

# Homebrew cask: Elvora.app (menu-bar companion). CLI/agent: Formula/elvora.rb.
cask "elvora" do
  version "0.5.0"
  sha256 "2af816e4da9b4888a1fa3d0b4373c8d8058dadf3abd8b6908bcf3960866f864b"

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
