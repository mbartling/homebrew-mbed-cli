class MbedCliAT182 < Formula
  desc "ARM mbed Command Line Interface"
  homepage "https://developer.mbed.org"
  url "https://github.com/ARMmbed/mbed-cli/archive/1.8.2.tar.gz"
  sha256 "431616c1cfe953bbd15676160cac4196eaa54987adcaa40cd63cc07548dadd16"
  version "1.8.2"

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
