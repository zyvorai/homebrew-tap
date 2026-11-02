cask "teryon" do
  version "0.24.0"
  sha256  "5e4c2decf4034ffa4e44c0120fc92dbff41c35175a64cc0afd2f815467079fac"

  url "https://github.com/zyvorai/teryon/releases/download/v#{version}/TERYON-#{version}.dmg"
  name "TERYON"
  desc "Persistent remote shells over OpenSSH with a native desktop app"
  homepage "https://zyvorai.github.io/teryon/"

  depends_on arch: :arm64
  depends_on :macos

  app "TERYON.app"
  binary "#{appdir}/TERYON.app/Contents/MacOS/teryon"

  zap trash: "~/.teryon"
end
