# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Gattotest < Formula
  desc "GattoPuccino is a command-line tool that takes an image file and applies a coffee-themed color palette to it. It supports four different flavors - latte, frappe, macchiato, and mocha. GattoPuccino uses the ImageMagick cli tool to apply the color palette."
  homepage "https://github.com/DevMentat/GattoPuccino/"
  version "2.2"

  depends_on "imagemagick"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/DevMentat/GattoPuccino/releases/download/v2.2/GattoPuccino_2.2_darwin_arm64.tar.gz"
      sha256 "e124fc12968e15b091ca1cead5b92b2782d0ec61c8cbcafe8b330570144d6d9d"

      def install
        bin.install "GattoPuccino"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/DevMentat/GattoPuccino/releases/download/v2.2/GattoPuccino_2.2_linux_arm64.tar.gz"
      sha256 "c5b19172cc395750a41ab6de5b2c217e2303cd655adac628f081a64262523942"

      def install
        bin.install "GattoPuccino"
      end
    end
  end

  def caveats
    <<~EOS
      gattopuccino <flavor> <image> (Flavor available: latte, frappe, macchiato, or mocha)
    EOS
  end
end
