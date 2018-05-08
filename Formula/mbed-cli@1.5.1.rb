class MbedCli < Formula
  desc "ARM mbed Command Line Interface"
  homepage "https://developer.mbed.org"
  url "https://github.com/ARMmbed/mbed-cli/archive/1.5.1.tar.gz"
  sha256 "5048535a4db03f7591b1ce808213248768df9c3f16ace53b7a24656c89bbbf64"
  version "1.5.1"

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
