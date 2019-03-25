class MbedCliAT1100 < Formula
  desc "ARM mbed Command Line Interface"
  homepage "https://developer.mbed.org"
  url "https://github.com/ARMmbed/mbed-cli/archive/1.10.0.tar.gz"
  sha256 "b071b28049a1015a27006fa0430d5577ae1a7b6428fdaf241c867a62b5d38ada"
  version "1.10.0"

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
