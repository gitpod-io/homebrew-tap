# typed: false
# frozen_string_literal: true

# This file is generated automatically by the Ona CLI release pipeline.
# Do not edit manually.

class Ona < Formula
  desc "CLI for Ona — development environments"
  homepage "https://ona.com"
  version "20260506.11434.0"
  license "UNLICENSED"

  on_macos do
    if Hardware::CPU.arm?
      url "https://releases.gitpod.io/cli/releases/20260506.11434.0/gitpod-darwin-arm64"
      sha256 "5488665bc20c838958dcb5dc8bff308db09186a73995c44a156cd2c36401015d"
    else
      url "https://releases.gitpod.io/cli/releases/20260506.11434.0/gitpod-darwin-amd64"
      sha256 "6d1d4b9e282d18dfa44b6f8badb3072d4b36af77af5c3bb536e5b416c34c0547"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://releases.gitpod.io/cli/releases/20260506.11434.0/gitpod-linux-arm64"
      sha256 "678c434ebb408c3b590dbd8cdb5ab442e0f49cf28001bb5b6f74232b0c25a4ac"
    else
      url "https://releases.gitpod.io/cli/releases/20260506.11434.0/gitpod-linux-amd64"
      sha256 "2f44641f4db6624d80c0942cea653b4c8b6bb282d53e09589a41aacdcdf83ed8"
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
