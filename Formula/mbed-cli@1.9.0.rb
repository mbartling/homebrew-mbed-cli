class MbedCliAT190 < Formula
  desc "ARM mbed Command Line Interface"
  homepage "https://developer.mbed.org"
  url "https://github.com/ARMmbed/mbed-cli/archive/1.9.0.tar.gz"
  sha256 "ec79e2abfdc5142c504b5ee4385e2e919e1bf64b21867355e768a4069718e0b3"
  version "1.9.0"

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
