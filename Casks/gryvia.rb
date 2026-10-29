cask "gryvia" do
  version "0.5.0"
  sha256  "7741df8132fec1c0424d03285b7e5ed18a02875f6ec8107350181a9c255f3b09"

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
