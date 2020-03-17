class MbedCliAT1103 < Formula
  desc "ARM mbed Command Line Interface"
  homepage "https://developer.mbed.org"
  url "https://github.com/ARMmbed/mbed-cli/archive/1.10.3.tar.gz"
  sha256 "8a95093a89aa8fb7a911775155cdb4b9d124ef6af74393dfc1b0bb79c3e33327"
  version "1.10.3"

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
