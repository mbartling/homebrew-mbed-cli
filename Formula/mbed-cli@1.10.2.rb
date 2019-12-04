class MbedCliAT1102 < Formula
  desc "ARM mbed Command Line Interface"
  homepage "https://developer.mbed.org"
  url "https://github.com/ARMmbed/mbed-cli/archive/1.10.2.tar.gz"
  sha256 "abd6e0db2334b7d25afaaa6265964383552e6bcf3076a379f218d224eb27f701"
  version "1.10.2"

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
