# zyvorai/tap

Homebrew tap for [Zyvor AI Labs](https://zyvor.dev) products.

## Install

```bash
brew tap zyvorai/tap
```

---

## Formulae

### FluxVM — Linux VMs on Apple silicon with Virtualization.framework

```bash
brew install zyvorai/tap/fluxvm
fluxctl run                   # a throwaway Debian VM and a shell
brew services start fluxvm    # the daemon, API on 127.0.0.1:7788
```

**What it installs:** `fluxctl`, the signed `fluxvm-vz-runner`, `fluxvm-vz-switch`, `fluxvm-blockd` and `fluxvm-usernet` (prebuilt, ~20 MB).

| | |
|---|---|
| **Version** | 0.4.0 |
| **macOS** | 14 Sonoma or later |
| **Arch** | Apple Silicon only |
| **Source** | https://github.com/zyvorai/zyvor-fluxvm/releases |

---

### MACORA (CLI) — your Mac's network, made clear

```bash
brew install zyvorai/tap/macora
macora diagnose               # why is my network slow?
macora en0                    # one interface, explained (macora en0 raw for ifconfig's own text)
```

**What it installs:** the signed `macora` command line tool, its man page and bash, zsh and fish completions (prebuilt, ~1 MB). Prefer the app? Use the cask below; it also puts `macora` on your PATH, so install one or the other.

| | |
|---|---|
| **Version** | 0.3.1 |
| **macOS** | 14 Sonoma or later |
| **Arch** | Apple Silicon only |
| **Source** | https://github.com/zyvorai/zyvor-macora/releases |

---

## Casks

### ZySign — macOS DSC Toolkit for MCA21 V3

> Sign MCA21 V3 eForms directly from your Mac using a USB DSC token — no eMudhra emBridge required.

```bash
brew install --cask zyvorai/tap/zysign
```

**What it installs:** `ZySign.app` dragged to `/Applications` (DMG install, ~89 MB).

| | |
|---|---|
| **Version** | 1.1.0 |
| **macOS** | 13 Ventura or later |
| **Arch** | Apple Silicon + Intel |
| **Homepage** | https://zyvor.dev/zysign |
| **Source** | https://github.com/zyvorai/zysign/releases |

#### Uninstall

```bash
brew uninstall --cask zyvorai/tap/zysign
```

Removes `ZySign.app`. To also remove data files:

```bash
rm -rf ~/Library/Application\ Support/com.zyvor.zysign
rm -f  ~/Library/Preferences/com.zyvor.zysign.plist
```

---

### Nivora — Mac-native application and network intelligence

> See which apps talk to what, through which network. Observe-first, local-first.

```bash
brew install --cask zyvorai/tap/nivora
```

**What it installs:** `Nivora.app` in `/Applications` (DMG, unsigned and not notarised: macOS asks for "Open Anyway" on first launch).

| | |
|---|---|
| **Version** | 0.5.2 |
| **macOS** | 14 Sonoma or later |
| **Arch** | Apple Silicon |
| **Source** | https://github.com/zyvorai/zyvor-nivora/releases |

---

### MACORA — explains your Mac's network and diagnoses why it is slow

```bash
brew install --cask zyvorai/tap/macora
```

**What it installs:** `Macora.app` in `/Applications` (DMG, signed and **notarized by Apple**) and the `macora` command line tool on your PATH. The first launch shows macOS's usual "downloaded from the Internet" prompt: choose Open.

| | |
|---|---|
| **Version** | 0.3.1 |
| **macOS** | 14 Sonoma or later |
| **Arch** | Apple Silicon |
| **Source** | https://github.com/zyvorai/zyvor-macora/releases |

---

## HyperCluster

```bash
brew install --cask zyvorai/tap/hypercluster
```

---

## Issues

Report bugs or cask update requests at https://github.com/zyvorai/homebrew-tap/issues
