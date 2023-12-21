class Leeway < Formula
  desc "Leeway is a heavily caching build system for Go, Typescript and Docker projects."
  url "https://github.com/gitpod-io/leeway/archive/refs/tags/v0.8.2.tar.gz"
  version "0.8.2"
  license "MIT"

  head "https://github.com/gitpod-io/leeway.git", branch: "main"

  livecheck do
    url :stable
    strategy :github_latest
  end

  if OS.mac? && Hardware::CPU.intel?
    sha256 "0ed798707f1b6b207765197650e43b46def749eb0bea9065592458784ec2f7c4"
    url "https://github.com/gitpod-io/leeway/releases/download/v0.8.2/leeway_0.8.2_Darwin_x86_64.tar.gz"
  elsif OS.mac? && Hardware::CPU.arm?
    sha256 "8c5afbb23d27d643eb30e2cd93c2de2d8e6ca56c6f745a413937f94ee0e38ca9"
    url "https://github.com/gitpod-io/leeway/releases/download/v0.8.2/leeway_0.8.2_Darwin_arm64.tar.gz"
  elsif OS.linux? && Hardware::CPU.intel?
    sha256 "ff2ce333eb649cf0543579f01066a181d43bc3b4eb64e8869a4db1ca0aae80fc"
    url "https://github.com/gitpod-io/leeway/releases/download/v0.8.2/leeway_0.8.2_Linux_x86_64.tar.gz"
  elsif OS.linux? && Hardware::CPU.arm?
    sha256 "dec498600d9e808bab349819025a34902c71173c26ef82da3c8ca14ee1db672c"
    url "https://github.com/gitpod-io/leeway/releases/download/v0.8.2/leeway_0.8.2_Linux_arm64.tar.gz"
  end

  def install
    bin.install "leeway"
  end

  test do
    system "#{bin}/leeway", "version"
  end
end