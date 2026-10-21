cask "gryvia" do
  version "0.4.2"
  sha256  "4db1e129e08585e71d4a3d0e92a6b774a79d1d0a0dd241ed11b9661b021ae093"

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
