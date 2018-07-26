class MbedCliAT175 < Formula
  desc "ARM mbed Command Line Interface"
  homepage "https://developer.mbed.org"
  url "https://github.com/ARMmbed/mbed-cli/archive/1.7.5.tar.gz"
  sha256 "0d3a3e49a19bd2d672fdcf2ea619064418f5555be05e583d416315065ac5e4fc"
  version "1.7.5"

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
