# Copyright 2026 Zyvor AI Labs · https://zyvor.dev
# SPDX-License-Identifier: LicenseRef-Zyvor-Production-2.0

# Homebrew formula for the prebuilt Elvora agent/CLI (signed darwin-arm64 tarball from zyvorai/elvora releases).
class Elvora < Formula
  desc "Apple infrastructure cloud: fleet agent, CLI and FluxVM runner"
  homepage "https://zyvorai.github.io/elvora/"
  url "https://github.com/zyvorai/elvora/releases/download/v0.5.0/elvora-darwin-arm64.tar.gz"
  version "0.5.0"
  sha256 "7605cf9a07171e41fcc85d518a0d2eb07aa5cd69b45754c15458dc64114385fc"
  license :cannot_represent

  depends_on arch: :arm64
  depends_on macos: :sonoma

  def install
    bin.install "elvora-agent", "elvoractl"
    libexec.install "elvora-fluxvm-runner"
  end

  def caveats
    <<~EOS
      Elvora is commercially licensed ($199 per enrolled Mac / year).
      Buy:
        Razorpay: https://rzp.io/rzp/sW0fMhui
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
