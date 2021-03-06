# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Otpgen < Formula
  desc "Simple CLI tool to generate OTP tokens"
  homepage "https://containeroo.ch"
  version "2.0.1"
  license "GNU General Public License v3.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/containeroo/otpgen/releases/download/v2.0.1/otpgen_2.0.1_darwin_arm64.tar.gz"
      sha256 "ef0ed8d5849fc918e2ecc37391fc212052334c0c32bab75784cb9c4777038417"

      def install
        bin.install "otpgen"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/containeroo/otpgen/releases/download/v2.0.1/otpgen_2.0.1_darwin_amd64.tar.gz"
      sha256 "6e019ecf18859fc6bf5db6d73833be1ed88fdf7ebd6ab5766a101647898fe021"

      def install
        bin.install "otpgen"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/containeroo/otpgen/releases/download/v2.0.1/otpgen_2.0.1_linux_arm64.tar.gz"
      sha256 "73df7ceb1d37b20b8df2c5f41183419dd9d21aa71349e1c507f8988283b6f3ed"

      def install
        bin.install "otpgen"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/containeroo/otpgen/releases/download/v2.0.1/otpgen_2.0.1_linux_amd64.tar.gz"
      sha256 "176d30c5e91d25ee7f1c7646bbc7dba4c5864d4e16794eabd7b54c2f7b77c6b7"

      def install
        bin.install "otpgen"
      end
    end
    if Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
      url "https://github.com/containeroo/otpgen/releases/download/v2.0.1/otpgen_2.0.1_linux_armv6.tar.gz"
      sha256 "c746c65cda1abf7f58d373b9e3f84ec05ace3718e5d415e6b803f4b7a4ad3366"

      def install
        bin.install "otpgen"
      end
    end
  end

  depends_on "go" => :optional

  test do
    system "#{bin}/otpgen --version"
  end
end
