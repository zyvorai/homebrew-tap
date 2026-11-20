# Copyright 2026 Zyvor AI Labs · https://zyvor.dev
# SPDX-License-Identifier: LicenseRef-Zyvor-Production-1.0

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
    Nivora is signed and notarized by Apple.
    A commercial license is required to run it. For a 30-day trial key, email sales@zyvor.dev. Licences: https://zyvor.dev/buy
    Install notes: https://github.com/zyvorai/nivora/blob/main/docs/INSTALL.md
  EOS
end
