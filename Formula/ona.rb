# typed: false
# frozen_string_literal: true

# This file is generated automatically by the Ona CLI release pipeline.
# Do not edit manually.

class Ona < Formula
  desc "CLI for Ona — development environments"
  homepage "https://ona.com"
  version "20260727.11901.0"
  license "UNLICENSED"

  on_macos do
    if Hardware::CPU.arm?
      url "https://releases.gitpod.io/cli/releases/20260727.11901.0/gitpod-darwin-arm64"
      sha256 "615aab247d379bda9862f8f063c5f2222ddb9e98838e202f19a9b1be649ea126"
    else
      url "https://releases.gitpod.io/cli/releases/20260727.11901.0/gitpod-darwin-amd64"
      sha256 "ce79a6e86d15020f1e18195410eae70a6ca34047f32682f0caf27d6ff02b4369"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://releases.gitpod.io/cli/releases/20260727.11901.0/gitpod-linux-arm64"
      sha256 "8ab62d05a7fac569ab3ce3db93cf1fdc6647b2cab89e9b71dd7cb82ec611bd78"
    else
      url "https://releases.gitpod.io/cli/releases/20260727.11901.0/gitpod-linux-amd64"
      sha256 "32aed356b9f289b385a8e51868a668f5a060061708e2f24cea64aa94c716bb4e"
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
