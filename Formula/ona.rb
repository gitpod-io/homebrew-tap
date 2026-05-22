# typed: false
# frozen_string_literal: true

# This file is generated automatically by the Ona CLI release pipeline.
# Do not edit manually.

class Ona < Formula
  desc "CLI for Ona — development environments"
  homepage "https://ona.com"
  version "20260522.10852.0"
  license "UNLICENSED"

  on_macos do
    if Hardware::CPU.arm?
      url "https://releases.gitpod.io/cli/releases/20260522.10852.0/gitpod-darwin-arm64"
      sha256 "dad155071c8884735ffcd6649fb67cb86fc29b4304e7be0d51f428fcd5bb9fe6"
    else
      url "https://releases.gitpod.io/cli/releases/20260522.10852.0/gitpod-darwin-amd64"
      sha256 "026eccf7d0fcddb9bd7fe4cc580fc173865c52822332083d13d51d829aef696d"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://releases.gitpod.io/cli/releases/20260522.10852.0/gitpod-linux-arm64"
      sha256 "8d5a5eb87f44a3a0267091186443aa77191c4d9bf2682af7a3597a6c025cb460"
    else
      url "https://releases.gitpod.io/cli/releases/20260522.10852.0/gitpod-linux-amd64"
      sha256 "b61c6e253ff00817c7ef1f7eb58d089145ca72f7a636739194ae87da70787d22"
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
