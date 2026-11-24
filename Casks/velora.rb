# Copyright 2026 Zyvor AI Labs · https://zyvor.dev
# SPDX-License-Identifier: LicenseRef-Zyvor-Production-2.0

# Homebrew cask: Velora.app (signed/notarized DMG from zyvorai/velora releases).
cask "velora" do
  version "0.5.0"
  sha256 "51477d67f355e55cae7b87b199396e1b9031f89007a4b5b061a74b397a53bf27"

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
    Velora Pro: ₹7,299 / Mac / year (~US$86).
    Buy:
      Razorpay: https://rzp.io/rzp/cjooj55V
    Docs: https://zyvorai.github.io/velora/#pricing
  EOS
end
