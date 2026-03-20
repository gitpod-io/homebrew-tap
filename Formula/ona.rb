# typed: false
# frozen_string_literal: true

# This file is generated automatically by the Ona CLI release pipeline.
# Do not edit manually.

class Ona < Formula
  desc "CLI for Ona — development environments"
  homepage "https://ona.com"
  version "20260312.2036.0"
  license "UNLICENSED"

  on_macos do
    if Hardware::CPU.arm?
      url "https://releases.gitpod.io/cli/releases/20260312.2036.0/gitpod-darwin-arm64"
      sha256 "9b6d67a87a13e5b6edac27f35044faa948794bb638b31b8bd984c882a800b532"
    else
      url "https://releases.gitpod.io/cli/releases/20260312.2036.0/gitpod-darwin-amd64"
      sha256 "915d521bae76d198a9bb9d3f4e06f110d23a4872bf9a566a7857e328e2d5927d"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://releases.gitpod.io/cli/releases/20260312.2036.0/gitpod-linux-arm64"
      sha256 "c4d2690126ec328fe57287aa96c981eb3ddc1b8181d1586d4f1f142a7d4b2b77"
    else
      url "https://releases.gitpod.io/cli/releases/20260312.2036.0/gitpod-linux-amd64"
      sha256 "10bda65b27ad7599e6ec1b2a7c8f17d5b6d2c4d4f6e2375365d661810e34e609"
    end
  end

  def install
    binary_name = "gitpod-#{OS.kernel_name.downcase}-#{Hardware::CPU.arch == :arm64 ? "arm64" : "amd64"}"
    binary_name += ".exe" if OS.windows?
    bin.install binary_name => "ona"
  end

  test do
    assert_match "ona version", shell_output("#{bin}/ona version 2>&1")
  end
end
