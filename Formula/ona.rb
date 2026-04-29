# typed: false
# frozen_string_literal: true

# This file is generated automatically by the Ona CLI release pipeline.
# Do not edit manually.

class Ona < Formula
  desc "CLI for Ona — development environments"
  homepage "https://ona.com"
  version "20260429.10546.0"
  license "UNLICENSED"

  on_macos do
    if Hardware::CPU.arm?
      url "https://releases.gitpod.io/cli/releases/20260429.10546.0/gitpod-darwin-arm64"
      sha256 "18a8acc58c16b2535ad942ca4dededce4a5053e68b157868c3ed9131ebe07149"
    else
      url "https://releases.gitpod.io/cli/releases/20260429.10546.0/gitpod-darwin-amd64"
      sha256 "884ce42cc8e1f1c8bb17a08d8429a1910037cf7f5c48b93ea0e7fcb86fbbb3da"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://releases.gitpod.io/cli/releases/20260429.10546.0/gitpod-linux-arm64"
      sha256 "b9d6978ec1011ecc290d733710d1894a09f5aa2bcddd5cdb6ad163f17dc9a64c"
    else
      url "https://releases.gitpod.io/cli/releases/20260429.10546.0/gitpod-linux-amd64"
      sha256 "309657c47f245f599d46aa2071494a5e314f218ae0409d2884c1bfa499131ee6"
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
