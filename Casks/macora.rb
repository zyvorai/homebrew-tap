# Copyright 2026 Zyvor AI Labs · https://zyvor.dev
# SPDX-License-Identifier: LicenseRef-Zyvor-Production-1.0

# Homebrew cask: MACORA.app (signed and notarized by Apple) plus the macora CLI on PATH. Lives in zyvorai/homebrew-tap.
# Version and sha256 are filled in by scripts/update-homebrew.sh when a release is published.
cask "macora" do
  version "0.5.1"
  sha256 "55bb5527d48aa732f590c5cd5716cc913de0a4a75323e4d7be0100dd5f72ecb8"

  url "https://github.com/zyvorai/zyvor-macora/releases/download/v#{version}/Macora-#{version}.dmg"
  name "MACORA"
  desc "Explains your network and diagnoses why it is slow"
  homepage "https://zyvorai.github.io/zyvor-macora/"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on arch: :arm64
  depends_on macos: :sonoma

  app "Macora.app"
  # The command line tool ships inside the app bundle.
  binary "#{appdir}/Macora.app/Contents/Resources/macora"

  # The app bundle does not ship completion files, so generate them from the bundled CLI (always the matching version).
  completion_files = {
    "zsh"  => "#{HOMEBREW_PREFIX}/share/zsh/site-functions/_macora",
    "bash" => "#{HOMEBREW_PREFIX}/etc/bash_completion.d/macora",
    "fish" => "#{HOMEBREW_PREFIX}/share/fish/vendor_completions.d/macora.fish",
  }

  postflight do
    cli = "#{appdir}/Macora.app/Contents/Resources/macora"
    completion_files.each do |shell, path|
      FileUtils.mkdir_p(File.dirname(path))
      File.write(path, IO.popen([cli, "completions", shell], &:read))
    end
  end

  uninstall_postflight do
    completion_files.each_value { |path| FileUtils.rm_f(path) }
  end

  zap trash: [
    "~/Library/Preferences/dev.zyvor.macora.plist",
    "~/Library/Saved Application State/dev.zyvor.macora.savedState",
  ]
end
