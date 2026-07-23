# typed: false
# frozen_string_literal: true

# This file is generated automatically by the Ona CLI release pipeline.
# Do not edit manually.

class Ona < Formula
  desc "CLI for Ona — development environments"
  homepage "https://ona.com"
  version "20260723.11125.0"
  license "UNLICENSED"

  on_macos do
    if Hardware::CPU.arm?
      url "https://releases.gitpod.io/cli/releases/20260723.11125.0/gitpod-darwin-arm64"
      sha256 "62a617e5ceba7b65013463d0a7cb0906c81e8ef3cd2d9699705465fac25c4ac1"
    else
      url "https://releases.gitpod.io/cli/releases/20260723.11125.0/gitpod-darwin-amd64"
      sha256 "ed448708d8f525af0df8bfaea8b5fbbb4a38d3c637471eb71d91b5cb91df292b"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://releases.gitpod.io/cli/releases/20260723.11125.0/gitpod-linux-arm64"
      sha256 "0f0dab173568be93fec8fa73d4c5d8d20a0daca43eadd3db8fa7819006d622f3"
    else
      url "https://releases.gitpod.io/cli/releases/20260723.11125.0/gitpod-linux-amd64"
      sha256 "d659e487231362847ff1f0a38a2d7418477964ecf3eccf41e535887d803769ac"
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
