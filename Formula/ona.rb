# typed: false
# frozen_string_literal: true

# This file is generated automatically by the Ona CLI release pipeline.
# Do not edit manually.

class Ona < Formula
  desc "CLI for Ona — development environments"
  homepage "https://ona.com"
  version "20260804.11027.0"
  license "UNLICENSED"

  on_macos do
    if Hardware::CPU.arm?
      url "https://releases.gitpod.io/cli/releases/20260804.11027.0/gitpod-darwin-arm64"
      sha256 "31005090687471a043b65da6dbf8edcb4b08fbef4a7e081cba3bddb9676fd306"
    else
      url "https://releases.gitpod.io/cli/releases/20260804.11027.0/gitpod-darwin-amd64"
      sha256 "f306d59c4ae60500be02f54630b46253d2d1c5e3b5c741af4f287a884c8c1bbe"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://releases.gitpod.io/cli/releases/20260804.11027.0/gitpod-linux-arm64"
      sha256 "82eea37be5c086a5f0bea590d1801c0b63ad4afcd6b37267a4fab67890f78812"
    else
      url "https://releases.gitpod.io/cli/releases/20260804.11027.0/gitpod-linux-amd64"
      sha256 "a92cd88141d3d2d752198cfd5a2fa0e9af507e247e2ff09f4f8601f491b9cd8c"
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
