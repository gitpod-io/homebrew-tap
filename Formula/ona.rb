# typed: false
# frozen_string_literal: true

# This file is generated automatically by the Ona CLI release pipeline.
# Do not edit manually.

class Ona < Formula
  desc "CLI for Ona — development environments"
  homepage "https://ona.com"
  version "20260522.11804.0"
  license "UNLICENSED"

  on_macos do
    if Hardware::CPU.arm?
      url "https://releases.gitpod.io/cli/releases/20260522.11804.0/gitpod-darwin-arm64"
      sha256 "a8c991e6f0fea8aeb579be735d9865eed68e5084b78b4c039b9ee6e347266743"
    else
      url "https://releases.gitpod.io/cli/releases/20260522.11804.0/gitpod-darwin-amd64"
      sha256 "7347d623a39ea810aab723b82401a24bd172699824a4e23a2633e02f3c4a08f5"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://releases.gitpod.io/cli/releases/20260522.11804.0/gitpod-linux-arm64"
      sha256 "e394bb3ccdd7dd0f3f224b1f5b01cf4b0a6aa7da05645176885bcf2c0a037763"
    else
      url "https://releases.gitpod.io/cli/releases/20260522.11804.0/gitpod-linux-amd64"
      sha256 "25ee48e5303c23e9b018ebe51917ac3fcbbe0dc64acf62e1c6d67a300befe3a9"
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
