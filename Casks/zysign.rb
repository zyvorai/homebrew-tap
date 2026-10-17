cask "zysign" do
  version "3.2.0"
  sha256  "7f468a221e4adc533ffb25532c27d5e2ddcaad8b0867dcfd5543fe89d458aeab"

  url "https://github.com/zyvorai/zysign/releases/download/v#{version}/ZySign-#{version}.dmg"
  name "ZySign"
  desc "macOS DSC signing toolkit for MCA21 V3 — replaces eMudhra emBridge"
  homepage "https://zyvor.dev/zysign"

  depends_on macos: :ventura

  app "ZySign.app"

  uninstall quit: "com.zyvor.zysign"

  zap trash: [
    "~/Library/Application Support/com.zyvor.zysign",
    "~/Library/Preferences/com.zyvor.zysign.plist",
    "/Library/ZySignBridge",
  ]
end
