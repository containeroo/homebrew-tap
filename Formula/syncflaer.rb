class Syncflaer < Formula
    desc "SyncFlaer"
    homepage "https://containeroo.ch"
    version "5.1.0"
    bottle :unneeded

    if OS.mac? && Hardware::CPU.intel?
      url "https://github.com/containeroo/syncflaer/releases/download/v5.1.0/syncflaer-v5.1.0-darwin-amd64.tar.gz"
      sha256 "93a908addd2d4433f57b006053b3548c82229183d2e23e91dc64e9b786262add"
    end
    if OS.mac? && Hardware::CPU.arm?
      url "https://github.com/containeroo/syncflaer/releases/download/v5.1.0/syncflaer-v5.1.0-darwin-arm64.tar.gz"
      sha256 "0c3825d7d473dd5c6f3e7fad02c5e3067823e1d23ae5aeec2b3a0039e5febdc8"
    end
    if OS.linux? && Hardware::CPU.intel?
      url "https://github.com/containeroo/syncflaer/releases/download/v5.1.0/syncflaer-v5.1.0-linux-amd64.tar.gz"
      sha256 "46f41836e4c594beaf731dee97594a007b20bcc216ad5395e5922f251dbd4323"
    end
    if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/containeroo/syncflaer/releases/download/v5.1.0/syncflaer-v5.1.0-linux-arm64.tar.gz"
      sha256 "44b589f0dc9a0375e7ae1144f3995b08b2dd094d9cad58b14ee72d1013013be4"
    end

    def install
      bin.install "syncflaer"
    end

    test do
      system "#{bin}/syncflaer --version"
    end
  end
