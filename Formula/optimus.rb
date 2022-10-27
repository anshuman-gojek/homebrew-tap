# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Optimus < Formula
  desc "Optimus helps your organization to build & manage data pipelines with ease."
  homepage "https://odpf.github.io/optimus"
  version "0.4.3"
  license "Apache 2.0"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/odpf/optimus/releases/download/v0.4.3/optimus_0.4.3_macos_x86_64.tar.gz"
      sha256 "f78981cc142dff897db92d7565ea108c90fd2a3ebe2288cc2258a8fcc117c340"

      def install
        bin.install "optimus"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/odpf/optimus/releases/download/v0.4.3/optimus_0.4.3_macos_arm64.tar.gz"
      sha256 "cf73ffb2468848b72909ac58d58b91dfcbecdcda9322ab22eabe3961e55f2387"

      def install
        bin.install "optimus"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
      url "https://github.com/odpf/optimus/releases/download/v0.4.3/optimus_0.4.3_linux_armv6.tar.gz"
      sha256 "77d49bc3572d04b6beeadc8600a78048a787f2d0ff3ce34884123c21ab2398ea"

      def install
        bin.install "optimus"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/odpf/optimus/releases/download/v0.4.3/optimus_0.4.3_linux_x86_64.tar.gz"
      sha256 "b17661b3ee3dfae66a7604d1dbd388000735b3dc4d96ed5314e04007a6a61ebd"

      def install
        bin.install "optimus"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/odpf/optimus/releases/download/v0.4.3/optimus_0.4.3_linux_arm64.tar.gz"
      sha256 "5410fe6aa71d4ad9fdf5b78aee4d623b838db98207f4222cf3ad05181b557c3d"

      def install
        bin.install "optimus"
      end
    end
  end

  depends_on "git"
end
