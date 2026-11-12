# typed: false
# frozen_string_literal: true

# This file is generated automatically by the Ona CLI release pipeline.
# Do not edit manually.

class Ona < Formula
  desc "CLI for Ona — development environments"
  homepage "https://ona.com"
  version "20261112.11538.0"
  license "UNLICENSED"

  on_macos do
    if Hardware::CPU.arm?
      url "https://releases.gitpod.io/cli/releases/20261112.11538.0/gitpod-darwin-arm64"
      sha256 "b18f423c629f1653ee7081a3556e4fd94b07cf2a953c9c1ea37300d2ae42fd38"
    else
      url "https://releases.gitpod.io/cli/releases/20261112.11538.0/gitpod-darwin-amd64"
      sha256 "0504507d42639c97bf00ff97a8cac69ce94c29adf9f47bbcb1dc8281d0a47b56"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://releases.gitpod.io/cli/releases/20261112.11538.0/gitpod-linux-arm64"
      sha256 "36a6564dab36047653ac3036350b000b226bd1fb3aed524c1f80a9f59215666f"
    else
      url "https://releases.gitpod.io/cli/releases/20261112.11538.0/gitpod-linux-amd64"
      sha256 "eee247b7f46f8bf2e60c4b95a662846b79c67e1f61b81b4161b95fd7f8aa8341"
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
