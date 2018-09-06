class MbedCliAT180 < Formula
  desc "ARM mbed Command Line Interface"
  homepage "https://developer.mbed.org"
  url "https://github.com/ARMmbed/mbed-cli/archive/1.8.0.tar.gz"
  sha256 "5ccbf912258638cbe5bc6d4d11eee7410ebf595ea4cd073d5eadf713bc09a42a"
  version "1.8.0"

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
