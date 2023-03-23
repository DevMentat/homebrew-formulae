# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class GattoPuccino < Formula
  desc "GattoPuccino is a command-line tool that takes an image file and applies a coffee-themed color palette to it. It supports four different flavors - latte, frappe, macchiato, and mocha. GattoPuccino uses the ImageMagick cli tool to apply the color palette."
  homepage "https://github.com/DevMentat/GattoPuccino/"
  version "1.7"

  depends_on "imagemagick"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/DevMentat/GattoPuccino/releases/download/v1.7/GattoPuccino_1.7_darwin_arm64.tar.gz"
      sha256 "7541b3362ad53b7283ff99ae5e48d8fa185130183fb411f0b22559bdf72fa968"

      def install
        bin.install "GattoPuccino"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/DevMentat/GattoPuccino/releases/download/v1.7/GattoPuccino_1.7_linux_arm64.tar.gz"
      sha256 "f217cdc93c3a36eb83ba2f15f6c8521cbd49b84c16107ee249055318940a338c"

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

  test do
    system "#{bin}/GattoPuccino"
  end
end
