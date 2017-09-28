class MbedCli < Formula
  desc "ARM mbed Command Line Interface"
  homepage "https://developer.mbed.org"
  url "https://github.com/ARMmbed/mbed-cli/archive/1.2.1.tar.gz"
  sha256 "d0da7b80f959fce6344950d69f276b1e32ec6099f594d876f5f2160ecf8fa6a4"

  depends_on "git"
  depends_on "hg"
  depends_on "caskroom/cask/gcc-arm-embedded"

  def install
    system "python", "setup", "install"
  end

  test do
    system "true"
  end
end
