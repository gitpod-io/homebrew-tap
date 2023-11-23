class Gitpod < Formula
    desc "The Gitpod CLI"
    homepage "https://gitpod.io"
    license "AGPL v3.0"
    version "0.1.1"
  
    if OS.mac? && Hardware::CPU.intel?
      url "https://gitpod.io/static/bin/gitpod-cli-darwin-amd64"
      sha256 "7f31c4272f39fb17c6b43e550d6f5cb732c4bb6bd1c74e41956a99448ced3cfa"
    elsif OS.mac? && Hardware::CPU.arm?
      url "https://gitpod.io/static/bin/gitpod-cli-darwin-arm64"
      sha256 "2b5d9c0f32da1dcee6dde8974117cb49b218ed7b9b9d0b8ec2247d260b00369d"
    elsif OS.linux? && Hardware::CPU.intel?
      url "https://gitpod.io/static/bin/gitpod-cli-linux-amd64"
      sha256 "dbc35c88784744b74ef37d6a2e22accb8ee6b4f8763403067822cc2ebbdf47d3"
    elsif OS.linux? && Hardware::CPU.arm?
      url "https://gitpod.io/static/bin/gitpod-cli-linux-arm64"
      sha256 "5feb8cbd08f8de0c6cc342fb99033b12e9151b2acc9adb1464ef15abb969fcb4"
    end
  
    def install
      mv "gitpod-cli-darwin-arm64", "gitpod" if OS.mac? && Hardware::CPU.arm?
      mv "gitpod-cli-darwin-amd64", "gitpod" if OS.mac? && Hardware::CPU.intel?
      mv "gitpod-cli-linux-arm64", "gitpod" if OS.linux? && Hardware::CPU.arm?
      mv "gitpod-cli-linux-amd64", "gitpod" if OS.linux? && Hardware::CPU.intel?
      bin.install "gitpod"
    end
  
    test do
      system "#{bin}/gitpod", "version"
    end
  end
  