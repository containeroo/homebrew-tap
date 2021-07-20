  class certinfo < Formula
    desc "certinfo"
    homepage "https://containeroo.ch"
    version "1.0.0"
    bottle :unneeded

    if OS.mac? && Hardware::CPU.intel?
      url "https://github.com/containeroo/certinfo/releases/download/v1.0.0/certinfo-v1.0.0-darwin-amd64.tar.gz"
      sha256 "9074513019a523ebeb85d40eceddece5877b7b22804b6681fbd6957c7ad93f23"
    end
    if OS.mac? && Hardware::CPU.arm?
      url "https://github.com/containeroo/certinfo/releases/download/v1.0.0/certinfo-v1.0.0-darwin-arm64.tar.gz"
      sha256 "b74ea7c580017cf0546412055e3528e2af87113fabdd35b8b683242d67960a21"
    end
    if OS.linux? && Hardware::CPU.intel?
      url "https://github.com/containeroo/certinfo/releases/download/v1.0.0/certinfo-v1.0.0-linux-amd64.tar.gz"
      sha256 "b8b1187a68d4c63f3f76e1aa71fba21a3b747a86acdee6aaf133b1a9d3c62973"
    end
    if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/containeroo/certinfo/releases/download/v1.0.0/certinfo-v1.0.0-linux-arm64.tar.gz"
      sha256 "1ba1c1549b9b010880d355849c312b99d85d7d0b367ae2a7781299e354af4a88"
    end

    def install
      bin.install "certinfo"
    end

    test do
      system "#{bin}/certinfo --help"
    end
  end
