# typed: false
# frozen_string_literal: true

# This file is generated automatically by the Ona CLI release pipeline.
# Do not edit manually.

class Ona < Formula
  desc "CLI for Ona — development environments"
  homepage "https://ona.com"
  version "20260522.10739.0"
  license "UNLICENSED"

  on_macos do
    if Hardware::CPU.arm?
      url "https://releases.gitpod.io/cli/releases/20260522.10739.0/gitpod-darwin-arm64"
      sha256 "f498d1336872b83c62fdb0eae642a459938df821907fe979c1debd537779de23"
    else
      url "https://releases.gitpod.io/cli/releases/20260522.10739.0/gitpod-darwin-amd64"
      sha256 "0a674bd1aee9f95906e79d297962f7df7dfbd7940d7b804c0c1bce69cef83f1a"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://releases.gitpod.io/cli/releases/20260522.10739.0/gitpod-linux-arm64"
      sha256 "ce124864088b52b6e511e27c74fed882fec486f972ca680fa0f2d26a0fb3e8b9"
    else
      url "https://releases.gitpod.io/cli/releases/20260522.10739.0/gitpod-linux-amd64"
      sha256 "13303ad516f3f47de698bfddfebf1374d505abc78bf9fb41fbe1c7fa9abe0510"
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
