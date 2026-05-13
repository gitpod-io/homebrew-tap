# typed: false
# frozen_string_literal: true

# This file is generated automatically by the Ona CLI release pipeline.
# Do not edit manually.

class Ona < Formula
  desc "CLI for Ona — development environments"
  homepage "https://ona.com"
  version "20260512.11909.0"
  license "UNLICENSED"

  on_macos do
    if Hardware::CPU.arm?
      url "https://releases.gitpod.io/cli/releases/20260512.11909.0/gitpod-darwin-arm64"
      sha256 "400eefc7825c4c9d24bd2db43cb6e01da603ef587020dfe17d11aef1a1e04f3f"
    else
      url "https://releases.gitpod.io/cli/releases/20260512.11909.0/gitpod-darwin-amd64"
      sha256 "e52cd647ff162ab3407994c56b88e0d03fdd70621c209f99d9f008c78c0ce537"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://releases.gitpod.io/cli/releases/20260512.11909.0/gitpod-linux-arm64"
      sha256 "205cdb674aab8fc4e2bb34c361b15a2dd69ec4e5ca9d1d834134e2e5b5449325"
    else
      url "https://releases.gitpod.io/cli/releases/20260512.11909.0/gitpod-linux-amd64"
      sha256 "d18997613fbcb7178b6de6dda5bd4b0a02cc0d98f38398de9ed37b6599a66563"
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
