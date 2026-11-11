# Homebrew formula for the prebuilt Elvora agent/CLI (signed darwin-arm64 tarball from zyvorai/elvora releases).
class Elvora < Formula
  desc "Apple infrastructure cloud: fleet agent, CLI and FluxVM runner"
  homepage "https://zyvorai.github.io/elvora/"
  url "https://github.com/zyvorai/elvora/releases/download/v0.4.1/elvora-darwin-arm64.tar.gz"
  version "0.4.1"
  sha256 "c2026dcbedbf75b970eec4563e88f66abf62b19039231f9fdafdcdac11c8d7b1"
  license :cannot_represent

  depends_on arch: :arm64
  depends_on macos: :sonoma

  def install
    bin.install "elvora-agent", "elvoractl"
    libexec.install "elvora-fluxvm-runner"
  end

  def caveats
    <<~EOS
      Elvora is commercially licensed ($49 per enrolled Mac / year).
      Buy (Cashfree, India + international cards):
        https://payments.cashfree.com/forms/zyvor-elvora
      Or: sales@zyvor.dev · https://zyvorai.github.io/elvora/#pricing

      Point agents that run macos-vm workloads at the FluxVM runner:
        export ELVORA_VM_RUNNER="#{opt_libexec}/elvora-fluxvm-runner"
      FluxVM ≥ 0.4.18 (prefer 0.4.19):
        brew install zyvorai/tap/fluxvm
    EOS
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/elvoractl --version")
  end
end
