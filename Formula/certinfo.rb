  class Certinfo < Formula
    desc "certinfo"
    homepage "https://containeroo.ch"
    version "1.0.1"
    bottle :unneeded

    if OS.mac? && Hardware::CPU.intel?
      url "https://github.com/containeroo/certinfo/releases/download/v1.0.1/certinfo-v1.0.1-darwin-amd64.tar.gz"
      sha256 "af1cc948e07348f0686fe214d922f84636f1a8601687e51438d3ba883a4bd9ce"
    end
    if OS.mac? && Hardware::CPU.arm?
      url "https://github.com/containeroo/certinfo/releases/download/v1.0.1/certinfo-v1.0.1-darwin-arm64.tar.gz"
      sha256 "48ff7a9841a46591ea61387b9f7e780c0010ca8b9642d89df0b93c55acc63992"
    end
    if OS.linux? && Hardware::CPU.intel?
      url "https://github.com/containeroo/certinfo/releases/download/v1.0.1/certinfo-v1.0.1-linux-amd64.tar.gz"
      sha256 "24d74661fd2008907767711a0635a4e2606a1bdca5c3540b0cadc1146e0278e4"
    end
    if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/containeroo/certinfo/releases/download/v1.0.1/certinfo-v1.0.1-linux-arm64.tar.gz"
      sha256 "d86be12f20072600eed5b3134d3f9d0ecf1ae4cb6c520bffd4dc0698afd1d5b9"
    end

    def install
      bin.install "certinfo"
    end

    test do
      system "#{bin}/certinfo --help"
    end
  end
