# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Certinfo < Formula
  desc "Get information about the certificate from one or more hostnames"
  homepage "https://containeroo.ch"
  version "1.3.13"
  license "GNU General Public License v3.0"

  depends_on "go" => :optional

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/containeroo/certinfo/releases/download/v1.3.13/certinfo_1.3.13_darwin_amd64.tar.gz"
      sha256 "ae5230123b5cb6a7b4b4bbc0badf0662c5672bb7b3ba6241f7f8c4df933407da"

      def install
        bin.install "certinfo"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/containeroo/certinfo/releases/download/v1.3.13/certinfo_1.3.13_darwin_arm64.tar.gz"
      sha256 "8afbc2393c32164dcd94aaf9f98bfd6282e914107827933071375f02de783bc7"

      def install
        bin.install "certinfo"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/containeroo/certinfo/releases/download/v1.3.13/certinfo_1.3.13_linux_amd64.tar.gz"
      sha256 "2d0c2e84016bb9f6c80968f41d7919e7c40cedc04861c2d3b2dd7c190ef917db"

      def install
        bin.install "certinfo"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/containeroo/certinfo/releases/download/v1.3.13/certinfo_1.3.13_linux_arm64.tar.gz"
      sha256 "34c054283dd6a3245d22f8d685f0e16c489ea489592ae2fdbd517157d4b23663"

      def install
        bin.install "certinfo"
      end
    end
    if Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
      url "https://github.com/containeroo/certinfo/releases/download/v1.3.13/certinfo_1.3.13_linux_armv6.tar.gz"
      sha256 "6d107ba7ecae11edfee5c66210ef70f8bd597506236e7753c48ffb37d54c00e5"

      def install
        bin.install "certinfo"
      end
    end
  end

  test do
    system "#{bin}/certinfo --version"
  end
end
