class MbedCliAT183 < Formula
  desc "ARM mbed Command Line Interface"
  homepage "https://developer.mbed.org"
  url "https://github.com/ARMmbed/mbed-cli/archive/1.8.3.tar.gz"
  sha256 "670b1996a7f8a8b67b0ee9bbc495a622402f3ffdae8f872c9b64c2c857e84a54"
  version "1.8.3"

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
