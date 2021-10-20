  class Certinfo < Formula
    desc "certinfo"
    homepage "https://containeroo.ch"
    version "1.2.0"

    if OS.mac? && Hardware::CPU.intel?
      url "https://github.com/containeroo/certinfo/releases/download/v1.2.0/certinfo-v1.2.0-darwin-amd64.tar.gz"
      sha256 "581364f8acdbbc00c82b1ded10b080e2e676131398658bb1c4b100d029bc4292"
    end
    if OS.mac? && Hardware::CPU.arm?
      url "https://github.com/containeroo/certinfo/releases/download/v1.2.0/certinfo-v1.2.0-darwin-arm64.tar.gz"
      sha256 "9f1ac5fe8f80e38af011947ed9de6b4b20805667a8669029828094531e94439e"
    end
    if OS.linux? && Hardware::CPU.intel?
      url "https://github.com/containeroo/certinfo/releases/download/v1.2.0/certinfo-v1.2.0-linux-amd64.tar.gz"
      sha256 "eda686638d519942061ccf043ad1026dbae897bc2bb19b11eb1b9660fe42109f"
    end
    if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/containeroo/certinfo/releases/download/v1.2.0/certinfo-v1.2.0-linux-arm64.tar.gz"
      sha256 "e6e3ab8cc8c3ed91fcfe131360adb11b56a4a150b81c2a6fcf11412a7f54095e"
    end

    def install
      bin.install "certinfo"
    end

    test do
      system "#{bin}/certinfo --help"
    end
  end
