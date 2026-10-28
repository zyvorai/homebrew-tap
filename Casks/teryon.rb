cask "teryon" do
  version "0.22.0"
  sha256  "a3511cfeda42bd18dbaa3613b9436955feea5ffba70f6aaeccb64b8ca5bb659d"

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
