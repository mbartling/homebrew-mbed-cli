class MbedCliAT192 < Formula
  desc "ARM mbed Command Line Interface"
  homepage "https://developer.mbed.org"
  url "https://github.com/ARMmbed/mbed-cli/archive/1.9.2.tar.gz"
  sha256 "816d1755db3650e6553f3cfe7e94d5c134ad299e0ad885bef9023f1b4b3d802f"
  version "1.9.2"

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
