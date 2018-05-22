class MbedCliAT160 < Formula
  desc "ARM mbed Command Line Interface"
  homepage "https://developer.mbed.org"
  url "https://github.com/ARMmbed/mbed-cli/archive/1.6.0.tar.gz"
  sha256 "9964b7e8a3bf287a40357701083ae03ce28d6d191237f27fe88a9167f4ad15c8"
  version "1.6.0"

  #depends_on :hg
  depends_on "mercurial"
  system "/usr/local/bin/brew", "cask", "install", "gcc-arm-embedded"

  def install
    system "python", *Language::Python.setup_install_args(prefix)
  end

  test do
    system "true"
  end
end
