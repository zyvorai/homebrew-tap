# Copyright 2026 Zyvor AI Labs · https://zyvor.dev
# SPDX-License-Identifier: LicenseRef-Zyvor-Production-2.0

# Notarized ClipSense 0.2.0 from github.com/zyvorai/clipsense releases.
cask "clipsense" do
  version "0.2.0"
  sha256  "9e7fcf271e334ab4699e8ccc806ca9d805099927c0db25fd7c970c1c5fee3980"

  url "https://github.com/zyvorai/clipsense/releases/download/v#{version}/ClipSense-#{version}.dmg"
  name "ClipSense"
  desc "Content-aware clipboard manager: redact, pretty-print and decode what you copy"
  homepage "https://zyvorai.github.io/clipsense/"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on arch: :arm64
  depends_on macos: :golden_gate

  app "ClipSense.app"

  zap trash: [
    "~/Library/Application Support/ClipSense",
    "~/Library/Preferences/dev.zyvor.clipsense.plist",
  ]

  caveats <<~EOS
    ClipSense is signed and notarized by Apple and needs macOS 27 or later.
    30-day trial key: sales@zyvor.dev. Paid licences are not on sale yet.
    Install notes: https://github.com/zyvorai/clipsense/blob/main/docs/INSTALL.md
  EOS
end
