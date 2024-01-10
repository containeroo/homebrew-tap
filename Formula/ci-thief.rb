# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class CiThief < Formula
  desc "Simple CLI tool to fetch GitLab CI variables and output them as exportable environment variables."
  homepage "https://containeroo.ch"
  version "1.0.1"
  license "GNU General Public License v3.0"

  depends_on "go" => :optional

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/containeroo/ci-thief/releases/download/v1.0.1/ci-thief_1.0.1_darwin_amd64.tar.gz"
      sha256 "f30fa2a6c369d6586abbff2dfd9e848a167d5043b007d8d4eac0de88bbaa5ea7"

      def install
        bin.install "ci-thief"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/containeroo/ci-thief/releases/download/v1.0.1/ci-thief_1.0.1_darwin_arm64.tar.gz"
      sha256 "19760a360f3ca80e59120c73a197d99270809b32888f0f6031afc9ab37443bf5"

      def install
        bin.install "ci-thief"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
      url "https://github.com/containeroo/ci-thief/releases/download/v1.0.1/ci-thief_1.0.1_linux_armv6.tar.gz"
      sha256 "d757cc0a2d4b02bc5df4508bec52b8878d466386c6051e83da955cf1fd08e5b2"

      def install
        bin.install "ci-thief"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/containeroo/ci-thief/releases/download/v1.0.1/ci-thief_1.0.1_linux_arm64.tar.gz"
      sha256 "dfd24b9b0f5ee5414a11efa9cc275dc49ab543d0c2a4cfa6fd0b8768f87718b2"

      def install
        bin.install "ci-thief"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/containeroo/ci-thief/releases/download/v1.0.1/ci-thief_1.0.1_linux_amd64.tar.gz"
      sha256 "f923d3581163616eb756b9e5396cc550553d99180e02d6a33973fa8e5c8b3975"

      def install
        bin.install "ci-thief"
      end
    end
  end
end
