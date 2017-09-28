class MbedCli < Formula
  desc "ARM mbed Command Line Interface"
  homepage "https://developer.mbed.org"
  url "https://github.com/ARMmbed/mbed-cli/archive/1.2.1.tar.gz"
  sha256 "d0da7b80f959fce6344950d69f276b1e32ec6099f594d876f5f2160ecf8fa6a4"

  depends_on "git"
  depends_on "hg"

  def install
    system "/usr/local/bin/brew", "cask", "install", "gcc-arm-embedded"
    system "python", *Language::Python.setup_install_args(prefix)
  end

  test do
    system "true"
  end
end
