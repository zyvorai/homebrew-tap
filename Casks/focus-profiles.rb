# Copyright 2026 Zyvor AI Labs · https://zyvor.dev
# SPDX-License-Identifier: LicenseRef-Zyvor-Production-2.0

# Homebrew cask: Focus Profiles.app (menu-bar app).
cask "focus-profiles" do
  version "0.1.0"
  sha256 "594172b49ae3966e71466a79f82230fadcf1a30d4fb3a34eede5a440e0c6b919"

  url "https://github.com/zyvorai/focus-profiles/releases/download/v#{version}/FocusProfiles-#{version}.dmg"
  name "Focus Profiles"
  desc "One hotkey switches window layout, terminals, browser tabs, VPN and kube context"
  homepage "https://zyvorai.github.io/focus-profiles/"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on arch: :arm64
  depends_on macos: :golden_gate

  app "FocusProfiles.app"

  zap trash: [
    "~/Library/Application Support/Focus Profiles",
    "~/Library/Preferences/dev.zyvor.focusprofiles.plist",
  ]

  caveats <<~EOS
    Focus Profiles is signed and notarized by Apple. It is a paid app with a 30-day trial and never disables a feature.
    30-day trial key or a licence: sales@zyvor.dev
    Install notes: https://github.com/zyvorai/focus-profiles/blob/main/docs/INSTALL.md
  EOS
end
