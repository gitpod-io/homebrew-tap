# typed: false
# frozen_string_literal: true

# This file is generated automatically by the Ona CLI release pipeline.
# Do not edit manually.

class Ona < Formula
  desc "CLI for Ona — development environments"
  homepage "https://ona.com"
  version "20260402.10948.0"
  license "UNLICENSED"

  on_macos do
    if Hardware::CPU.arm?
      url "https://releases.gitpod.io/cli/releases/20260402.10948.0/gitpod-darwin-arm64"
      sha256 "380d99390cf2c402e3ddc530887de04f9acac1f9a906da7933d4441d26f0b195"
    else
      url "https://releases.gitpod.io/cli/releases/20260402.10948.0/gitpod-darwin-amd64"
      sha256 "b1ffc0c702cfa6a7762d4503e36092cdeacd187e21e7835ee2b977e48cfe9195"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://releases.gitpod.io/cli/releases/20260402.10948.0/gitpod-linux-arm64"
      sha256 "15d97729c6ae2ab3dfe8173b4f23667132f03609d73c20dba83cb65654e5577a"
    else
      url "https://releases.gitpod.io/cli/releases/20260402.10948.0/gitpod-linux-amd64"
      sha256 "6428578a65f859f3f2b9a8b04b74ea8467a6638af8d389e14681395259c8bd30"
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
