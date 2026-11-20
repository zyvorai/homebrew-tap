# Copyright 2026 Zyvor AI Labs · https://zyvor.dev
# SPDX-License-Identifier: LicenseRef-Zyvor-Production-1.0

cask "gryvia" do
  version "0.5.2"
  sha256  "a1e406d73bffd4492f4876f577b498ffc4bb0a1a26b46d71775ae06dd4d8251d"

  url "https://github.com/zyvorai/gryvia-apple/releases/download/v#{version}/Gryvia-#{version}.dmg"
  name "Gryvia"
  desc "Schedule AI workloads across Apple Silicon Macs by memory budget"
  homepage "https://zyvorai.github.io/gryvia-apple/"

  depends_on arch: :arm64
  depends_on macos: :sequoia

  app "Gryvia.app"

  zap trash: [
    "~/Library/Application Support/Gryvia",
    "~/Library/LaunchAgents/dev.zyvor.gryvia.agent.plist",
    "~/Library/LaunchAgents/dev.zyvor.gryvia.server.plist",
    "~/Library/Logs/Gryvia",
  ]
end
