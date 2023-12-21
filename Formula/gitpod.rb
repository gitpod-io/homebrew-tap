class Gitpod < Formula
    desc "The Gitpod CLI"
    homepage "https://gitpod.io"
    license "AGPL v3.0"
    version "0.1.4"
  
    if OS.mac? && Hardware::CPU.intel?
      url "https://gitpod.io/static/bin/gitpod-cli-darwin-amd64"
    elsif OS.mac? && Hardware::CPU.arm?
      url "https://gitpod.io/static/bin/gitpod-cli-darwin-arm64"
    elsif OS.linux? && Hardware::CPU.intel?
      url "https://gitpod.io/static/bin/gitpod-cli-linux-amd64"
    elsif OS.linux? && Hardware::CPU.arm?
      url "https://gitpod.io/static/bin/gitpod-cli-linux-arm64"
    end

    livecheck do
      url "https://gitpod.io/static/bin/manifest.json"
      regex(/"version":\s*?"(\d+(?:\.\d+)+)"/i)
    end
  
    def install
      mv "gitpod-cli-darwin-arm64", "gitpod" if OS.mac? && Hardware::CPU.arm?
      mv "gitpod-cli-darwin-amd64", "gitpod" if OS.mac? && Hardware::CPU.intel?
      mv "gitpod-cli-linux-arm64", "gitpod" if OS.linux? && Hardware::CPU.arm?
      mv "gitpod-cli-linux-amd64", "gitpod" if OS.linux? && Hardware::CPU.intel?
      bin.install "gitpod"
      generate_completions_from_executable("gitpod", "completion")
    end
  
    test do
      system "#{bin}/gitpod", "version"
    end
  end
  