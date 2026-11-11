# zyvorai/tap

Homebrew tap for [Zyvor AI Labs](https://zyvor.dev) products.

## Install

```bash
brew tap zyvorai/tap
```

Licences for paid products are sold via [Cashfree](https://payments.cashfree.com/) (India and international cards). The invoice is your proof of licence; there is no licence key or in-app unlock yet.

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
| **Version** | 0.4.19 |
| **macOS** | 14 Sonoma or later |
| **Arch** | Apple Silicon only |
| **Source** | https://github.com/zyvorai/zyvor-fluxvm/releases |

---

### Elvora (CLI) — Apple infrastructure cloud agent and CLI

```bash
brew install zyvorai/tap/elvora
elvoractl --version
```

**What it installs:** `elvora-agent`, `elvoractl`, and `elvora-fluxvm-runner` under `$(brew --prefix elvora)/libexec` (prebuilt darwin-arm64). Menu-bar app: `brew install --cask zyvorai/tap/elvora`.

| | |
|---|---|
| **Version** | 0.4.1 |
| **macOS** | 14 Sonoma or later |
| **Arch** | Apple Silicon only |
| **Homepage** | https://zyvorai.github.io/elvora/ |
| **Source** | https://github.com/zyvorai/elvora/releases |

Paid product: **$49 per enrolled Mac / year**. Buy on [Cashfree](https://payments.cashfree.com/forms/zyvor-elvora) (India + international). See [LICENSING](https://github.com/zyvorai/elvora/blob/main/LICENSING.md).

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
| **Version** | 0.4.0 |
| **macOS** | 14 Sonoma or later |
| **Arch** | Apple Silicon only |
| **Source** | https://github.com/zyvorai/zyvor-macora/releases |

---

## Casks

### Velora — VMs, models and clusters on your Mac

```bash
brew install --cask zyvorai/tap/velora
```

**What it installs:** `Velora.app` from a Developer ID signed DMG.

| | |
|---|---|
| **Version** | 0.4.3 |
| **macOS** | 26 Tahoe or later |
| **Arch** | Apple Silicon only |
| **Homepage** | https://zyvorai.github.io/velora/ |
| **Source** | https://github.com/zyvorai/velora/releases |

BSL: free for personal, home, learning and non-production use. **Velora Pro** (production): **₹7,299 / Mac / year** (~US$86). Buy on [Cashfree](https://payments.cashfree.com/forms/zyvor-velora) (India + international).

---

### Elvora — menu-bar companion for the Apple infrastructure cloud

```bash
brew install --cask zyvorai/tap/elvora
```

**What it installs:** `Elvora.app` (DMG). Pair with the formula for the agent/CLI: `brew install zyvorai/tap/elvora`.

| | |
|---|---|
| **Version** | 0.4.1 |
| **macOS** | 14 Sonoma or later |
| **Arch** | Apple Silicon only |
| **Homepage** | https://zyvorai.github.io/elvora/ |
| **Source** | https://github.com/zyvorai/elvora/releases |

Paid product: **$49 per enrolled Mac / year**. Buy on [Cashfree](https://payments.cashfree.com/forms/zyvor-elvora) (India + international).

---

### Gryvia — a control plane for Apple Silicon fleets

> Schedule inference, fine-tuning and benchmarks across your Macs against each machine's unified-memory budget, with quotas, leases, provenance and a live GPU view.

```bash
brew install --cask zyvorai/tap/gryvia
```

**What it installs:** `Gryvia.app` (SwiftUI app with the bundled agent and control plane), a Developer ID signed and notarized DMG. Start here: https://zyvorai.github.io/zyvor-gryvia-apple/start/

| | |
|---|---|
| **Version** | 0.4.0 |
| **macOS** | 15 Sequoia or later |
| **Arch** | Apple Silicon only |
| **Homepage** | https://zyvorai.github.io/zyvor-gryvia-apple/ |
| **Source** | https://github.com/zyvorai/zyvor-gryvia-apple/releases |

Paid product: Personal is ₹420 one-time (about US$4.99); business plans start at ₹4,999 per year. See the homepage for plans and terms.

---

### ZySign — macOS DSC Toolkit for MCA21 V3

> Sign MCA21 V3 eForms directly from your Mac using a USB DSC token — no eMudhra emBridge required.

```bash
brew install --cask zyvorai/tap/zysign
```

**What it installs:** `ZySign.app` dragged to `/Applications` (DMG install, ~89 MB).

| | |
|---|---|
| **Version** | 3.2.1 |
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
| **Version** | 0.4.0 |
| **macOS** | 14 Sonoma or later |
| **Arch** | Apple Silicon |
| **Source** | https://github.com/zyvorai/zyvor-macora/releases |

---

### TERYON — persistent remote shells over OpenSSH

```bash
brew install --cask zyvorai/tap/teryon
teryon setup                  # guided first run: tools, SSH hosts, theme
```

**What it installs:** `TERYON.app` in `/Applications` (DMG, signed and **notarized by Apple**) and the `teryon` command line tool on your PATH.

| | |
|---|---|
| **Version** | 0.22.0 |
| **macOS** | 11 Big Sur or later |
| **Arch** | Apple Silicon |
| **Source** | https://github.com/zyvorai/teryon/releases |

---

## Issues

Report bugs or cask update requests at https://github.com/zyvorai/homebrew-tap/issues
