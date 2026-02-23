class Xctide < Formula
  desc "xctide command-line tool"
  homepage "https://github.com/agisilaos/xctide"
  license "MIT"
  version "0.2.1"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/agisilaos/xctide/releases/download/v0.2.1/xctide_0.2.1_darwin_arm64.tar.gz"
      sha256 "13d630d1a2b94549f719a6cb8294eba25360c33ce182a4f064c9f1d1c3f1683d"
    else
      url "https://github.com/agisilaos/xctide/releases/download/v0.2.1/xctide_0.2.1_darwin_amd64.tar.gz"
      sha256 "a020bca2c41614f9cf8d21636a6f48228aff493f9c7fe5d6347810c04a506c50"
    end
  end

  def install
    bin.install "xctide"
  end

  test do
    shell_output("#{bin}/xctide --version")
  end
end
