class Dologen < Formula
    desc "dologen"
    homepage "https://containeroo.ch"
    version "1.0.0"

    if OS.mac? && Hardware::CPU.intel?
      url "https://github.com/containeroo/dologen/releases/download/v1.0.0/dologen-v1.0.0-darwin-amd64.tar.gz"
      sha256 "33bd687b391c7c2dd36643445aad4066363bef736427e06f8ac3fedc47361617"
    end
    if OS.mac? && Hardware::CPU.arm?
      url "https://github.com/containeroo/dologen/releases/download/v1.0.0/dologen-v1.0.0-darwin-arm64.tar.gz"
      sha256 "0019dfc4b32d63c1392aa264aed2253c1e0c2fb09216f8e2cc269bbfb8bb49b5"
    end
    if OS.linux? && Hardware::CPU.intel?
      url "https://github.com/containeroo/dologen/releases/download/v1.0.0/dologen-v1.0.0-linux-amd64.tar.gz"
      sha256 "0019dfc4b32d63c1392aa264aed2253c1e0c2fb09216f8e2cc269bbfb8bb49b5"
    end
    if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/containeroo/dologen/releases/download/v1.0.0/dologen-v1.0.0-linux-arm64.tar.gz"
      sha256 "0019dfc4b32d63c1392aa264aed2253c1e0c2fb09216f8e2cc269bbfb8bb49b5"
    end

    def install
      bin.install "dologen"
    end

    test do
      system "#{bin}/dologen --help"
    end
  end
