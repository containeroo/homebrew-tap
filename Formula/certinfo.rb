  class Certinfo < Formula
    desc "certinfo"
    homepage "https://containeroo.ch"
    version "1.1.0"
    bottle :unneeded

    if OS.mac? && Hardware::CPU.intel?
      url "https://github.com/containeroo/certinfo/releases/download/v1.1.0/certinfo-v1.1.0-darwin-amd64.tar.gz"
      sha256 "bea9835f367de68fb490dc30cf6acb65fa42f3603b3dbe55e19c075ba1e486f8"
    end
    if OS.mac? && Hardware::CPU.arm?
      url "https://github.com/containeroo/certinfo/releases/download/v1.1.0/certinfo-v1.1.0-darwin-arm64.tar.gz"
      sha256 "33e5671b4f58a4b321e0d8a6d950eac4bd1ae534183722cc74d89c96dd6c7efe"
    end
    if OS.linux? && Hardware::CPU.intel?
      url "https://github.com/containeroo/certinfo/releases/download/v1.1.0/certinfo-v1.1.0-linux-amd64.tar.gz"
      sha256 "5f7b7fd3f1bf35a99f1885e8942d942b2791f8275eeb78cd78cdb0ddee02f392"
    end
    if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/containeroo/certinfo/releases/download/v1.1.0/certinfo-v1.1.0-linux-arm64.tar.gz"
      sha256 "d6e3bb82222823adcd5d68415a7f690f8a9eb15f89fdfc525a9c2e397533640c"
    end

    def install
      bin.install "certinfo"
    end

    test do
      system "#{bin}/certinfo --help"
    end
  end
