# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Certinfo < Formula
  desc "Get information about the certificate from one or more hostnames"
  homepage "https://containeroo.ch"
  version "1.3.4"
  license "GNU General Public License v3.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/containeroo/certinfo/releases/download/v1.3.4/certinfo_1.3.4_darwin_arm64.tar.gz"
      sha256 "335c8f879dae21f6eb1634ad174f892aeb20bebc7d949f441d72f7219daef3cd"

      def install
        bin.install "certinfo"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/containeroo/certinfo/releases/download/v1.3.4/certinfo_1.3.4_darwin_amd64.tar.gz"
      sha256 "b54614999bebdffc708f63ddcd828117d59e59d0e3d1038803950e2ebb5becde"

      def install
        bin.install "certinfo"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
      url "https://github.com/containeroo/certinfo/releases/download/v1.3.4/certinfo_1.3.4_linux_armv6.tar.gz"
      sha256 "1de7d1c9afbad7af5e0656062b1eda2b410d96296e4911a7755e29def5fc951c"

      def install
        bin.install "certinfo"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/containeroo/certinfo/releases/download/v1.3.4/certinfo_1.3.4_linux_arm64.tar.gz"
      sha256 "adad29c0b128bcd279786390a4a49ed678dd33c71630b26c638f371dcd41a913"

      def install
        bin.install "certinfo"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/containeroo/certinfo/releases/download/v1.3.4/certinfo_1.3.4_linux_amd64.tar.gz"
      sha256 "32412b52e0863df07f5f47b0276a6864aadfe9da95370fc242132ee4582f6f34"

      def install
        bin.install "certinfo"
      end
    end
  end

  depends_on "go" => :optional

  test do
    system "#{bin}/certinfo --version"
  end
end
