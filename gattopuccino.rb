# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Gattopuccino < Formula
  desc "GattoPuccino is a command-line tool that takes an image file and applies a coffee-themed color palette to it. It supports four different flavors - latte, frappe, macchiato, and mocha. GattoPuccino uses the ImageMagick cli tool to apply the color palette."
  homepage "https://github.com/DevMentat/GattoPuccino/"
  version "1.8"

  depends_on "imagemagick"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/DevMentat/GattoPuccino/releases/download/v1.8/GattoPuccino_1.8_darwin_arm64.tar.gz"
      sha256 "107c9ae23d7960df1b4408e3b159f40216985e8289737f38e59f7b15c8053c32"

      def install
        bin.install "GattoPuccino"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/DevMentat/GattoPuccino/releases/download/v1.8/GattoPuccino_1.8_linux_arm64.tar.gz"
      sha256 "d2381f9909d870238f33389c761b46eb8bec5a1243a973118710dac0c6d057fa"

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
