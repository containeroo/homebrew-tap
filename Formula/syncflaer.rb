class Syncflaer < Formula
    desc "SyncFlaer"
    homepage "https://containeroo.ch"
    version "4.0.1"
    bottle :unneeded

    if OS.mac? && Hardware::CPU.intel?
      url "https://github.com/containeroo/syncflaer/releases/download/v4.0.1/syncflaer-v4.0.1-darwin-amd64.tar.gz"
      sha256 "fee7cafb1354a333dbba8d1d97558669a6d419e1e4836316a3d0047cddcdc700"
    end
    if OS.mac? && Hardware::CPU.arm?
      url "https://github.com/containeroo/syncflaer/releases/download/v4.0.1/syncflaer-v4.0.1-darwin-arm64.tar.gz"
      sha256 "ce99d29b8d6b68aa899cceec98fee6d421229f57bca10b3ea5c78541793c7331"
    end
    if OS.linux? && Hardware::CPU.intel?
      url "https://github.com/containeroo/syncflaer/releases/download/v4.0.1/syncflaer-v4.0.1-linux-amd64.tar.gz"
      sha256 "611cbd8bd26e1551cebda447934f0270dd2081af14709f647a74574587f7ba9a"
    end
    if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/containeroo/syncflaer/releases/download/v4.0.1/syncflaer-v4.0.1-linux-arm64.tar.gz"
      sha256 "18135d9d37f53d12454ddb175fb5ea34fb6f4cdc5c8d809b60c893b6835f19bf"
    end

    def install
      bin.install "syncflaer"
    end

    test do
      system "#{bin}/syncflaer --version"
    end
  end
