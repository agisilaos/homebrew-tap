class Xctide < Formula
  desc "xctide command-line tool"
  homepage "https://github.com/agisilaos/xctide"
  license "MIT"
  version "0.1.2"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/agisilaos/xctide/releases/download/v0.1.2/xctide_0.1.2_darwin_arm64.tar.gz"
      sha256 "c333c46c90544d57b99f9886c6e7d9e3e7a052a08b4bf006fff5d6f8bc00eacd"
    else
      url "https://github.com/agisilaos/xctide/releases/download/v0.1.2/xctide_0.1.2_darwin_amd64.tar.gz"
      sha256 "52106d78adb9ead0d228bcb432ee18b83b02d2ea3a58afc80b8970284f0c6a68"
    end
  end

  def install
    bin.install "xctide"
  end

  test do
    shell_output("#{bin}/xctide --version")
  end
end
