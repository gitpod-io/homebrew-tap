# typed: false
# frozen_string_literal: true

# This file is generated automatically by the Ona CLI release pipeline.
# Do not edit manually.

class Ona < Formula
  desc "CLI for Ona — development environments"
  homepage "https://ona.com"
  version "20260407.10944.0"
  license "UNLICENSED"

  on_macos do
    if Hardware::CPU.arm?
      url "https://releases.gitpod.io/cli/releases/20260407.10944.0/gitpod-darwin-arm64"
      sha256 "61a961436aa66b9e01242a2ccccb5861d58d94a585d7311ea47c6b73eb44ad56"
    else
      url "https://releases.gitpod.io/cli/releases/20260407.10944.0/gitpod-darwin-amd64"
      sha256 "2040be0ba7b80f05fc5584b3cc2d1391ff88c74dfd92eb8e1095867b6e4470a6"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://releases.gitpod.io/cli/releases/20260407.10944.0/gitpod-linux-arm64"
      sha256 "1e0fa68574cc84895518a3337531ce1eb2b35379f485c9fbab4e70f0967e3f49"
    else
      url "https://releases.gitpod.io/cli/releases/20260407.10944.0/gitpod-linux-amd64"
      sha256 "9a45b987259ec70cf9a4d5373f712d0ed837605615a9ce733027edb52cd64bb1"
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
