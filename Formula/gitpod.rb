class Gitpod < Formula
    desc "The Gitpod CLI"
    homepage "https://gitpod.io"
    license "AGPL v3.0"
    version "0.1.1"
  
    if OS.mac? && Hardware::CPU.intel?
      url "https://gitpod.io/static/bin/gitpod-cli-darwin-amd64"
      sha256 "3e6022b0220d2faf7691deeb0e01ea6910713704997e64b7670bf6d5795df68f"
    elsif OS.mac? && Hardware::CPU.arm?
      url "https://gitpod.io/static/bin/gitpod-cli-darwin-arm64"
      sha256 "0c6cb8c0907d02de38bea942697d407cccf17d73d77b4ceb2fb911e93ce382b7"
    elsif OS.linux? && Hardware::CPU.intel?
      url "https://gitpod.io/static/bin/gitpod-cli-linux-amd64"
      sha256 "4ea925a07341efcebf395c08ac8bfb80522555fbbc4fba43b6aa40cd411bea85"
    elsif OS.linux? && Hardware::CPU.arm?
      url "https://gitpod.io/static/bin/gitpod-cli-linux-arm64"
      sha256 "3a7bafea273a09b567fba4315d92bb343698969c46c2f1f066c65a8744c74c18"
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
  