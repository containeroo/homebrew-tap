  class Certinfo < Formula
    desc "certinfo"
    homepage "https://containeroo.ch"
    version "1.1.0"
    bottle :unneeded

    if OS.mac? && Hardware::CPU.intel?
      url "https://github.com/containeroo/certinfo/releases/download/v1.1.0/certinfo-v1.1.0-darwin-amd64.tar.gz"
      sha256 "10fe5dbb3782ee2d81e736d69fcc8697bfe1d2682ddd86dc9ab740ab2123773f"
    end
    if OS.mac? && Hardware::CPU.arm?
      url "https://github.com/containeroo/certinfo/releases/download/v1.1.0/certinfo-v1.1.0-darwin-arm64.tar.gz"
      sha256 "98180fc908fc906d3c081d31f581127d2fd560fde60f4bb050306d350fe5b002"
    end
    if OS.linux? && Hardware::CPU.intel?
      url "https://github.com/containeroo/certinfo/releases/download/v1.1.0/certinfo-v1.1.0-linux-amd64.tar.gz"
      sha256 "bb4b361b047fbfc08fed1ff05c5ec7e846a6ad681bbb0b7265a9ad353d25ec60"
    end
    if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/containeroo/certinfo/releases/download/v1.1.0/certinfo-v1.1.0-linux-arm64.tar.gz"
      sha256 "14c9749cedd639b535f00cc7c103817c9cecc7c1c5119531a0a45767e6e76df0"
    end

    def install
      bin.install "certinfo"
    end

    test do
      system "#{bin}/certinfo --help"
    end
  end
