# Copyright 2026 Zyvor AI Labs · https://zyvor.dev
# SPDX-License-Identifier: LicenseRef-Zyvor-Production-1.0

# Notarized Work Journal 0.1.1 from github.com/zyvorai/work-journal releases.
cask "work-journal" do
  version "0.1.1"
  sha256  "cc71cf0a9fcb1d184faec85e3d912e3d4a444675e35f1388909453c6b8488c69"

  url "https://github.com/zyvorai/work-journal/releases/download/v#{version}/WorkJournal-#{version}.dmg"
  name "Work Journal"
  desc "On-device work log: frontmost-app time and file activity, with exports"
  homepage "https://zyvorai.github.io/work-journal/"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on arch: :arm64
  depends_on macos: :golden_gate

  app "WorkJournal.app"

  zap trash: [
    "~/Library/Containers/dev.zyvor.journal",
    "~/Library/Preferences/dev.zyvor.journal.plist",
  ]

  caveats <<~EOS
    Work Journal is signed and notarized by Apple and needs macOS 27 or later.
    It works without a key. Free 30-day trial key: sales@zyvor.dev. Paid licences: contact sales@zyvor.dev.
    Install notes: https://github.com/zyvorai/work-journal/blob/main/docs/INSTALL.md
  EOS
end
