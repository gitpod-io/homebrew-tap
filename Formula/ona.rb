# typed: false
# frozen_string_literal: true

# This file is generated automatically by the Ona CLI release pipeline.
# Do not edit manually.

class Ona < Formula
  desc "CLI for Ona — development environments"
  homepage "https://ona.com"
  version "20260813.10954.0"
  license "UNLICENSED"

  on_macos do
    if Hardware::CPU.arm?
      url "https://releases.gitpod.io/cli/releases/20260813.10954.0/gitpod-darwin-arm64"
      sha256 "33dc2b560ab06af9216af0fe573d35f55d92904729eb5848d7665a042f0ca056"
    else
      url "https://releases.gitpod.io/cli/releases/20260813.10954.0/gitpod-darwin-amd64"
      sha256 "e74425c73a41805dcfca193765f7209108e1db0d576a76b5449cc08179fcef64"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://releases.gitpod.io/cli/releases/20260813.10954.0/gitpod-linux-arm64"
      sha256 "884a1a250ecd3bcabfcdb51436d62936ee34952969042953ef2f23d693fd3a26"
    else
      url "https://releases.gitpod.io/cli/releases/20260813.10954.0/gitpod-linux-amd64"
      sha256 "db927348f254a0fafe2841bd5d525590d4c520d2b7049cf977ad546503a72242"
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
