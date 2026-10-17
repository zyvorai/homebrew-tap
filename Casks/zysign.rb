cask "zysign" do
  version "3.2.1"
  sha256  "12c065cb0ce69243a07c5821cf9b1607ce6d40f74b12c8281c490199ee40670a"

  url "https://github.com/zyvorai/zysign/releases/download/v#{version}/ZySign-#{version}.dmg"
  name "ZySign"
  desc "DSC signing toolkit for MCA21 V3 — replaces eMudhra emBridge"
  homepage "https://zyvor.dev/zysign"

  depends_on macos: :ventura

  app "ZySign.app"

  uninstall quit: "com.zyvor.zysign"

  zap trash: [
    "/Library/ZySignBridge",
    "~/Library/Application Support/com.zyvor.zysign",
    "~/Library/Preferences/com.zyvor.zysign.plist",
  ]
end
