# typed: false
# frozen_string_literal: true

# This file is generated automatically by the Ona CLI release pipeline.
# Do not edit manually.

class Ona < Formula
  desc "CLI for Ona — development environments"
  homepage "https://ona.com"
  version "20261022.11814.0"
  license "UNLICENSED"

  on_macos do
    if Hardware::CPU.arm?
      url "https://releases.gitpod.io/cli/releases/20261022.11814.0/gitpod-darwin-arm64"
      sha256 "de0a4de22b5894bf9f7ea6dc1baaf686dd7cb07375ac1999cae015010e8d9e78"
    else
      url "https://releases.gitpod.io/cli/releases/20261022.11814.0/gitpod-darwin-amd64"
      sha256 "e60db58015cbe1273945c91b8d983c3e15a125f1900ef3a598a2209668c36568"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://releases.gitpod.io/cli/releases/20261022.11814.0/gitpod-linux-arm64"
      sha256 "b1d862139b1a837bbcd8a07abc9e8d031d187b4818721069a5584add45991f9a"
    else
      url "https://releases.gitpod.io/cli/releases/20261022.11814.0/gitpod-linux-amd64"
      sha256 "2f589c8c779864827846ea11a47224b67940655d7d347e91d310d265eb831a8f"
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
