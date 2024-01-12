# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class CiThief < Formula
  desc "Simple CLI tool to fetch GitLab CI variables and output them as exportable environment variables."
  homepage "https://containeroo.ch"
  version "2.0.1"
  license "GNU General Public License v3.0"

  depends_on "go" => :optional

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/containeroo/ci-thief/releases/download/v2.0.1/ci-thief_2.0.1_darwin_arm64.tar.gz"
      sha256 "6c838000754590dc03580dfb99e2bfcb29675ee74c8beccb1276602589a2669e"

      def install
        bin.install "ci-thief"

        # Install bash completion
        output = Utils.safe_popen_read(bin/"ci-thief", "completion", "bash")
        (bash_completion/"ci-thief").write output

        # Install zsh completion
        output = Utils.safe_popen_read(bin/"ci-thief", "completion", "zsh")
        (zsh_completion/"_ci-thief").write output
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/containeroo/ci-thief/releases/download/v2.0.1/ci-thief_2.0.1_darwin_amd64.tar.gz"
      sha256 "0c4972fe3a8d93cac4b846673ba4c5144bad72ca95bd13a031e6dd9c2e196221"

      def install
        bin.install "ci-thief"

        # Install bash completion
        output = Utils.safe_popen_read(bin/"ci-thief", "completion", "bash")
        (bash_completion/"ci-thief").write output

        # Install zsh completion
        output = Utils.safe_popen_read(bin/"ci-thief", "completion", "zsh")
        (zsh_completion/"_ci-thief").write output
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/containeroo/ci-thief/releases/download/v2.0.1/ci-thief_2.0.1_linux_arm64.tar.gz"
      sha256 "8853256fbf32ef59f7a2deb30799bb8eadcacc49b3f3de0f9120baf8a0c3ed91"

      def install
        bin.install "ci-thief"

        # Install bash completion
        output = Utils.safe_popen_read(bin/"ci-thief", "completion", "bash")
        (bash_completion/"ci-thief").write output

        # Install zsh completion
        output = Utils.safe_popen_read(bin/"ci-thief", "completion", "zsh")
        (zsh_completion/"_ci-thief").write output
      end
    end
    if Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
      url "https://github.com/containeroo/ci-thief/releases/download/v2.0.1/ci-thief_2.0.1_linux_armv6.tar.gz"
      sha256 "08771a29891044620ad508bfa0fea4cae7c921f55e1e8a727e47cda65a796aa2"

      def install
        bin.install "ci-thief"

        # Install bash completion
        output = Utils.safe_popen_read(bin/"ci-thief", "completion", "bash")
        (bash_completion/"ci-thief").write output

        # Install zsh completion
        output = Utils.safe_popen_read(bin/"ci-thief", "completion", "zsh")
        (zsh_completion/"_ci-thief").write output
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/containeroo/ci-thief/releases/download/v2.0.1/ci-thief_2.0.1_linux_amd64.tar.gz"
      sha256 "623f77520388a3d0bca9735cbdcb1f9042627869c928f426741414072ca1c602"

      def install
        bin.install "ci-thief"

        # Install bash completion
        output = Utils.safe_popen_read(bin/"ci-thief", "completion", "bash")
        (bash_completion/"ci-thief").write output

        # Install zsh completion
        output = Utils.safe_popen_read(bin/"ci-thief", "completion", "zsh")
        (zsh_completion/"_ci-thief").write output
      end
    end
  end

  test do
    system "#{bin}/ci-thief version"
  end
end
