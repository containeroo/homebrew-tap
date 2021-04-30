class Syncflaer < Formula
    desc "SyncFlaer"
    homepage "https://containeroo.ch"
    version "4.0.0"
    bottle :unneeded

    if OS.mac? && Hardware::CPU.intel?
      url "https://github.com/containeroo/syncflaer/releases/download/v4.0.0/syncflaer-v4.0.0-darwin-amd64.tar.gz"
      sha256 "d42c9b4dbc2954d9bbfd46a1206d586471c54c12e2cdfbd92d626dc508850d66"
    end
    if OS.mac? && Hardware::CPU.arm?
      url "https://github.com/containeroo/syncflaer/releases/download/v4.0.0/syncflaer-v4.0.0-darwin-arm64.tar.gz"
      sha256 "359c2eca1083a3050c59b26fe46f5a6a7d898982023e27443bee9041b4fcbd34"
    end
    if OS.linux? && Hardware::CPU.intel?
      url "https://github.com/containeroo/syncflaer/releases/download/v4.0.0/syncflaer-v4.0.0-linux-amd64.tar.gz"
      sha256 "0b366a52e5a12c26d2e692b6f639b273280d3f405f5ceb7f016b17b9ef1e51ed"
    end
    if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/containeroo/syncflaer/releases/download/v4.0.0/syncflaer-v4.0.0-linux-arm64.tar.gz"
      sha256 "51df6d00e2fb2bbbab49134aa400957e3dfa5025ae7ee6e1a786d3a4a2e44b6b"
    end

    def install
      bin.install "syncflaer"
    end

    test do
      system "#{bin}/syncflaer --version"
    end
  end
