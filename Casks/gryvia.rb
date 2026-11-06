cask "gryvia" do
  version "0.5.1"
  sha256  "c565cfb20415c863773cfe64892f17ce3e9eb6466aaf676770546655395080d4"

  url "https://github.com/zyvorai/zyvor-gryvia-apple/releases/download/v#{version}/Gryvia-#{version}.dmg"
  name "Gryvia"
  desc "Schedule AI workloads across Apple Silicon Macs by memory budget"
  homepage "https://zyvorai.github.io/zyvor-gryvia-apple/"

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
