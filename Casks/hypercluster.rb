cask "hypercluster" do
  version "0.1.0"
  sha256  "fc448a28537adf2d9239c8b6ba6da53b8d70b553ad3378bd140b243b02570aaf"

  url "https://github.com/zyvorai/hypercluster/releases/download/v#{version}/Hypercluster-#{version}.pkg"
  name "HyperCluster"
  desc "Kubernetes cluster lifecycle — Kubespray-based deploy, scale, and upgrade over SSH"
  homepage "https://zyvor.dev/hypercluster"

  depends_on macos: :ventura
  depends_on arch: :arm64

  pkg "Hypercluster-#{version}.pkg"

  uninstall pkgutil: "com.zyvor.hypercluster"

  zap trash: [
    "~/Library/Application Support/com.zyvor.hypercluster",
    "~/Library/Preferences/com.zyvor.hypercluster.plist",
  ]
end
