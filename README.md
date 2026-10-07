# TheoVex Homebrew tap

Homebrew packaging for [Polaris](https://github.com/hitheoai/polaris), the local
security checker for code and AI coding agents.

**Release status:** prepared locally; not yet published or verified by hosted CI.
The public installation command below becomes available only after publication.
Source installation, reinstall, functional tests, and uninstall passed in an
isolated custom Homebrew prefix on Apple Silicon macOS 26.6. That establishes
local package mechanics, not standard-prefix or clean hosted-runner acceptance.

## Install

```sh
brew install hitheoai/tap/polaris
polaris --version
```

The initial target is Apple Silicon macOS with a supported Homebrew installation.
Intel Macs and Linux are not supported by this formula yet.

This installs Polaris's `polaris` and `theo` commands, its terminal UI, and its MCP
integration. Built-in analyzers are included. Semgrep, the optional local-model
stack, and model weights are not installed or downloaded.

The formula builds the published Polaris source package and checksummed Python
resources in a dedicated virtual environment. Homebrew supplies Python 3.14,
Pydantic, Cryptography, rpds-py, and libyaml, including their native dependencies. Those
Homebrew dependencies are maintained by Homebrew rather than frozen by this tap.
No prebuilt Polaris bottle is currently published.

## Use

In your project:

```sh
polaris check
polaris check --plain
polaris check --json
```

Editor setup is an explicit, separate action:

```sh
polaris setup --help
```

Installation does not change editor settings, shell profiles, credentials, or
project files, and does not install a background service.

## Maintain your installation

```sh
brew update
brew upgrade hitheoai/tap/polaris
brew test hitheoai/tap/polaris
brew uninstall hitheoai/tap/polaris
```

Uninstall removes the Homebrew package and its command links, not user settings,
credentials, or project/editor configuration. If you previously installed Polaris
with another package manager, remove that installation through its original
manager or resolve command conflicts before linking; do not force-overwrite links.
Rerun explicit editor setup if its configuration points at an old versioned keg.

## Maintainers

`Formula/polaris.rb` is independent of the unpublished managed-analyzer bundle and
macOS DMG installer in the Polaris source repository. Do not copy their approval
flags or present this source formula as a signed/notarized installer.

For a new release:

1. Verify the published Polaris source archive's release provenance and SHA256.
2. Update its source URL/checksum and resolve the `mcp,tui` extras. Keep native
   packages supplied by Homebrew excluded from Python resources.
3. Review changed dependency versions, source checksums, licenses, and advisories.
   Homebrew can propose updated resource blocks:

   ```sh
   brew update-python-resources --print-only hitheoai/tap/polaris
   ```
   Preserve the checksummed upstream GitHub source archives for
   `tree-sitter-rust` 0.24.2 and `tree-sitter-typescript` 0.23.2: their matching
   PyPI source distributions omit native headers and cannot build from source.
   Their common files were compared byte-for-byte. Recheck this exception when
   updating either grammar; do not blindly replace these resources with PyPI URLs.

4. Run `brew style Formula/polaris.rb`, `brew audit --strict --online --formula
   hitheoai/tap/polaris`, a source installation, and `brew test hitheoai/tap/polaris`.
5. Submit a pull request and require the Homebrew workflow to pass before merging.
   The workflow tests installation, functional Python/JavaScript scans, TUI
   availability, a real MCP stdio interaction, reinstall, and uninstall.

Python resources are exact source pins; build tools and Homebrew dependencies are
not a fully frozen toolchain. A successful source build is not proof of bottle
relocatability, notarization, or coverage on an untested operating system.
No workflow here automatically bumps versions, merges pull requests, or publishes
bottles. Changes require review.

Polaris and this tap's packaging are licensed under Apache-2.0. Third-party
components retain their own licenses.
