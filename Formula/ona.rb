# typed: false
# frozen_string_literal: true

# This file is generated automatically by the Ona CLI release pipeline.
# Do not edit manually.

class Ona < Formula
  desc "CLI for Ona — development environments"
  homepage "https://ona.com"
  version "20260717.10255.0"
  license "UNLICENSED"

  on_macos do
    if Hardware::CPU.arm?
      url "https://releases.gitpod.io/cli/releases/20260717.10255.0/gitpod-darwin-arm64"
      sha256 "730101dc0051b3edf2a1e49638754c1f3c44123d17b4c64cc1a90825c3fb9b68"
    else
      url "https://releases.gitpod.io/cli/releases/20260717.10255.0/gitpod-darwin-amd64"
      sha256 "4d6c7c2c45ec05f652ec7a76dd299f76e90e1e1ecd07d7810f8b35712e15ffb2"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://releases.gitpod.io/cli/releases/20260717.10255.0/gitpod-linux-arm64"
      sha256 "42be3e041af0b0b697d8a8a5063e183186ff020c3c33342ade6ce2ad51707f2b"
    else
      url "https://releases.gitpod.io/cli/releases/20260717.10255.0/gitpod-linux-amd64"
      sha256 "16e8fe5745d5dbc8f7c101748b0f07e48adb942c9abeff64d828fe805979dd50"
    end
  end

  def install
    binary_name = "gitpod-#{OS.kernel_name.downcase}-#{Hardware::CPU.arch == :arm64 ? "arm64" : "amd64"}"
    bin.install binary_name => "ona"
  end

  test do
    assert_match "Version:", shell_output("#{bin}/ona version 2>&1")
  end
end
