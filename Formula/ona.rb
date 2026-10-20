# typed: false
# frozen_string_literal: true

# This file is generated automatically by the Ona CLI release pipeline.
# Do not edit manually.

class Ona < Formula
  desc "CLI for Ona — development environments"
  homepage "https://ona.com"
  version "20261020.11353.0"
  license "UNLICENSED"

  on_macos do
    if Hardware::CPU.arm?
      url "https://releases.gitpod.io/cli/releases/20261020.11353.0/gitpod-darwin-arm64"
      sha256 "fb087a9014d136cac8b70254161430939e03ef491486251c9c3469f6bde54637"
    else
      url "https://releases.gitpod.io/cli/releases/20261020.11353.0/gitpod-darwin-amd64"
      sha256 "9d7126493b1b48608e193e65cc8770294f410bfc19b0955fbd1463be7062bf06"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://releases.gitpod.io/cli/releases/20261020.11353.0/gitpod-linux-arm64"
      sha256 "0a5774dedfb4a76822712fa84d120486ca660f0c2a630cb8fc89915a9f28b486"
    else
      url "https://releases.gitpod.io/cli/releases/20261020.11353.0/gitpod-linux-amd64"
      sha256 "ed0b47b7ce4fe4336dc55cf3212aad26b2b4534ed04af20e42d629598e6e43c4"
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
