class MbedCliAT181 < Formula
  desc "ARM mbed Command Line Interface"
  homepage "https://developer.mbed.org"
  url "https://github.com/ARMmbed/mbed-cli/archive/1.8.1.tar.gz"
  sha256 "ed7706a9f94643648892d8d230c332b3ded306948b83b6ee8bb56ff5a6ff62b3"
  version "1.8.1"

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
