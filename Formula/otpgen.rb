  class Otpgen < Formula
    desc "otpgen"
    homepage "https://containeroo.ch"
    version "2.0.0"
    bottle :unneeded

    if OS.mac? && Hardware::CPU.intel?
      url "https://github.com/containeroo/otpgen/releases/download/v2.0.0/otpgen-v2.0.0-darwin-amd64.tar.gz"
      sha256 "0fb5bfb589a39bf22436f34555c9f74e578c9a40d3d214e96869cd45724a158a"
    end
    if OS.mac? && Hardware::CPU.arm?
      url "https://github.com/containeroo/otpgen/releases/download/v2.0.0/otpgen-v2.0.0-darwin-arm64.tar.gz"
      sha256 "ecc0b0e283edc0aec44a5eff71beb3241da9ef9200fb0de85d20883c5d2a7155"
    end
    if OS.linux? && Hardware::CPU.intel?
      url "https://github.com/containeroo/otpgen/releases/download/v2.0.0/otpgen-v2.0.0-linux-amd64.tar.gz"
      sha256 "4c8065320ff7c770e1950947f83abf7b079506257a98770857d4a63bfe7b3395"
    end
    if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/containeroo/otpgen/releases/download/v2.0.0/otpgen-v2.0.0-linux-arm64.tar.gz"
      sha256 "ddf928b0ae7675f513fb447210cf3e677e48ec4c027c61637ce40e024686eb0c"
    end

    def install
      bin.install "otpgen"
    end

    test do
      system "#{bin}/otpgen --help"
    end
  end
