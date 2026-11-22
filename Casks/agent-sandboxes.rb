# Copyright 2026 Zyvor AI Labs · https://zyvor.dev
# SPDX-License-Identifier: LicenseRef-Zyvor-Production-2.0

# Homebrew cask: Agent Sandboxes.app (menu-bar app).
cask "agent-sandboxes" do
  version "0.1.0"
  sha256 "c94f5f9c200c9d471b93fb1a8714fa0f93c31f72995e3fd2e0534cb9ea25cff0"

  url "https://github.com/zyvorai/agent-sandboxes/releases/download/v#{version}/Agent-Sandboxes-#{version}.dmg"
  name "Agent Sandboxes"
  desc "Run a coding agent in a disposable VM, review the diff, keep or discard"
  homepage "https://zyvorai.github.io/agent-sandboxes/"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on arch: :arm64
  depends_on macos: :golden_gate

  app "AgentSandboxes.app"

  zap trash: [
    "~/Library/Application Support/Agent Sandboxes",
    "~/Library/Preferences/dev.zyvor.agent-sandboxes.plist",
  ]

  caveats <<~EOS
    Agent Sandboxes is signed and notarized by Apple. It is a paid app with a 30-day trial and never disables a feature.
    30-day trial key or a licence: sales@zyvor.dev
  EOS
end
