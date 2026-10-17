# Homebrew formula: the macora command line (prebuilt, signed, Apple silicon). Lives in zyvorai/homebrew-tap.
# The url and sha256 are updated by scripts/update-homebrew.sh when a release is published.
class Macora < Formula
  desc "Explainable Mac network diagnosis: ifconfig-style CLI and terminal workspace"
  homepage "https://zyvorai.github.io/zyvor-macora/"
  url "https://github.com/zyvorai/zyvor-macora/releases/download/v0.3.1/macora-0.3.1-arm64-apple-darwin.tar.gz"
  sha256 "bafd907c44c7df8f2540b6867eab01068098e3512de711c695e582c8800ee103"
  license "Apache-2.0"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on arch: :arm64
  depends_on macos: :sonoma

  conflicts_with cask: "zyvorai/tap/macora", because: "the cask already links macora into your PATH"

  def install
    bin.install "macora"
    man1.install "man/macora.1"
    bash_completion.install "completions/macora.bash" => "macora"
    zsh_completion.install "completions/_macora"
    fish_completion.install "completions/macora.fish"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/macora --version")
    assert_match "Usable hosts", shell_output("#{bin}/macora subnet 10.0.0.0/8")
    assert_match "diagnose", shell_output("#{bin}/macora completions bash")
    assert_match "lo0", shell_output("#{bin}/macora list")
  end
end
