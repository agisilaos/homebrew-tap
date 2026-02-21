class Gflight < Formula
  desc "gflight command-line tool"
  homepage "https://github.com/agisilaos/gflight"
  license "MIT"
  version "0.1.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/agisilaos/gflight/releases/download/v0.1.0/gflight_0.1.0_darwin_arm64.tar.gz"
      sha256 "b98f59cb002a86e917b3651104af7b26dee608e0d4d2286250a00821aa5b247b"
    else
      url "https://github.com/agisilaos/gflight/releases/download/v0.1.0/gflight_0.1.0_darwin_amd64.tar.gz"
      sha256 "c9a09a8bef4a7dad369e59e154d0beed8625196f442d9d877a27a83936009e54"
    end
  end

  def install
    bin.install "gflight"
  end

  test do
    shell_output("#{bin}/gflight --version")
  end
end
