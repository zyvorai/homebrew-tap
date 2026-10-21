cask "gryvia" do
  version "0.4.3"
  sha256  "3f5a1ceac81741b90cb0308946a971db24fcdb0ab143298f6a9dc4957375e61c"

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
