# typed: false
# frozen_string_literal: true

# This file is generated automatically by the Ona CLI release pipeline.
# Do not edit manually.

class Ona < Formula
  desc "CLI for Ona — development environments"
  homepage "https://ona.com"
  version "20260914.11056.0"
  license "UNLICENSED"

  on_macos do
    if Hardware::CPU.arm?
      url "https://releases.gitpod.io/cli/releases/20260914.11056.0/gitpod-darwin-arm64"
      sha256 "83783aa39915a8c7a4cc7e6ffa1a998ea37c859971014eccf76f2fa8e36d4f0e"
    else
      url "https://releases.gitpod.io/cli/releases/20260914.11056.0/gitpod-darwin-amd64"
      sha256 "667906b2a4c867db00a1752061fc5494b9c792713590a0188a2a45f46b655c6c"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://releases.gitpod.io/cli/releases/20260914.11056.0/gitpod-linux-arm64"
      sha256 "ec7a69fafdbc96734cb02cc0e69151756ef29f2f9bdb8f0346515b383276a660"
    else
      url "https://releases.gitpod.io/cli/releases/20260914.11056.0/gitpod-linux-amd64"
      sha256 "7f9ecb6baf2bb51b9b3778324de5615a6114d6be68d6381365900c54341cf0a9"
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
