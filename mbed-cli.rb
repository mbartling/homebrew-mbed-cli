class MbedCli < Formula
  desc "ARM mbed Command Line Interface"
  homepage "https://developer.mbed.org"
  url "https://github.com/ARMmbed/mbed-cli/archive/1.2.2.tar.gz"
  sha256 "bedd9742a99c355eb2e30283eaf28d05ff610083dc5f9506a9216006e70d2ac6"

  depends_on "git"
  depends_on "hg"
  system "/usr/local/bin/brew", "cask", "install", "gcc-arm-embedded"

  def install
    system "python", *Language::Python.setup_install_args(prefix)
  end

  test do
    system "true"
  end
end
