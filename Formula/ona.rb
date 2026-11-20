# typed: false
# frozen_string_literal: true

# This file is generated automatically by the Ona CLI release pipeline.
# Do not edit manually.

class Ona < Formula
  desc "CLI for Ona — development environments"
  homepage "https://ona.com"
  version "20261120.11149.0"
  license "UNLICENSED"

  on_macos do
    if Hardware::CPU.arm?
      url "https://releases.gitpod.io/cli/releases/20261120.11149.0/gitpod-darwin-arm64"
      sha256 "a0e584f38fed7d393973b5dcb366ca764df664d0d1cb2efb0055ed86c36ee2a1"
    else
      url "https://releases.gitpod.io/cli/releases/20261120.11149.0/gitpod-darwin-amd64"
      sha256 "2875e0b8f2d136e91cf3cc4aeae6d9c29ff94e1cb80ce25f0db9af45063ecdb5"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://releases.gitpod.io/cli/releases/20261120.11149.0/gitpod-linux-arm64"
      sha256 "bf9248f0a3d890ac57213f1dee6609757e03fbb64b3c4dfc0cfafea4cda7cab5"
    else
      url "https://releases.gitpod.io/cli/releases/20261120.11149.0/gitpod-linux-amd64"
      sha256 "409bfb8f30e2f5f8780ba74dba6a179b429ae40b717f6c09f0cd92c8a57db0bb"
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
