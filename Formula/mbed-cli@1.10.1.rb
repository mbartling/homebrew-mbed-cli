class MbedCliAT1101 < Formula
  desc "ARM mbed Command Line Interface"
  homepage "https://developer.mbed.org"
  url "https://github.com/ARMmbed/mbed-cli/archive/1.10.1.tar.gz"
  sha256 "a83c39e0d0856a8fd2e07db2ece402f22182ac0296d6a15ef99dcfe690a48f9b"
  version "1.10.1"

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
