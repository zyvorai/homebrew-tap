# Notarized Port Dashboard 1.0.0 from github.com/zyvorai/port-dashboard releases.
cask "port-dashboard" do
  version "1.0.0"
  sha256  "c0f16033dbd21da1124898b22742a0ff22fa6b5503cce643cb0ab28d8a687bb6"

  url "https://github.com/zyvorai/port-dashboard/releases/download/v#{version}/PortDashboard-#{version}.dmg"
  name "Port Dashboard"
  desc "Menu-bar app that lists listening ports and safely stops their processes"
  homepage "https://zyvorai.github.io/port-dashboard/"

  depends_on arch: :arm64
  depends_on macos: :golden_gate

  app "PortDashboard.app"

  zap trash: "~/Library/Preferences/dev.zyvor.ports.plist"

  caveats <<~EOS
    Port Dashboard is signed and notarized by Apple. Free, no licence key.
    It lives in the menu bar (no Dock icon). Install notes: https://github.com/zyvorai/port-dashboard/blob/main/docs/INSTALL.md
  EOS
end
