# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Stencil < Formula
  desc "Schema registry"
  homepage "https://github.com/odpf/stencil"
  version "0.3.2"
  license "Apache 2.0"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/odpf/stencil/releases/download/v0.3.2/stencil_0.3.2_macos_x86_64.tar.gz"
      sha256 "5f41742c56cc3f8a1f5a2ed51c6f1977a7810e7e8a0de35b90eeb05e5e7b48f6"

      def install
        bin.install "stencil"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/odpf/stencil/releases/download/v0.3.2/stencil_0.3.2_macos_arm64.tar.gz"
      sha256 "974dfe6825415ee10889585b07505c5481404f1a4d0fd34c009864a2683c6cfe"

      def install
        bin.install "stencil"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/odpf/stencil/releases/download/v0.3.2/stencil_0.3.2_linux_x86_64.tar.gz"
      sha256 "9fc6cf1ebcd5912dae64dc04f83906e6f20e0bd8d03f342cd8ffbd990f777494"

      def install
        bin.install "stencil"
      end
    end
    if Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
      url "https://github.com/odpf/stencil/releases/download/v0.3.2/stencil_0.3.2_linux_armv6.tar.gz"
      sha256 "ce76e1a83cfb92125427338148dcdccabb6a3909bed9a48c76daca7d5d7e56d7"

      def install
        bin.install "stencil"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/odpf/stencil/releases/download/v0.3.2/stencil_0.3.2_linux_arm64.tar.gz"
      sha256 "48aebad56b10e13db1c6d0465096e92b9f9999fdc28af7779d81e1bf2d750d08"

      def install
        bin.install "stencil"
      end
    end
  end

  depends_on "git"
end
